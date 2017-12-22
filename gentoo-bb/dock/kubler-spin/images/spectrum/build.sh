#
# build config
#

_packages="net-im/spectrum::mva =net-im/swiften-3.0::mva net-im/transwhat::azimut"

# force native compilation
_emerge_bin="emerge"

# swifted is broken without this
export BOB_FEATURES="${BOB_FEATURES} -multilib-strict"

set -x

configure_bob(){
    add_overlay mva https://github.com/msva/mva-overlay/
    add_overlay azimut https://github.com/azimut/overlay

    # https://wiki.gentoo.org/wiki/Project:Python/PYTHON_TARGETS
    echo 'PYTHON_TARGETS="python2_7"'       >> /etc/portage/make.conf
    echo 'PYTHON_SINGLE_TARGET="python2_7"' >> /etc/portage/make.conf
    echo 'USE_PYTHON="2.7"'                 >> /etc/portage/make.conf

    update_keywords 'dev-libs/log4cxx' +~amd64
    update_use 'dev-libs/boost'    +nls
    update_use 'dev-libs/protobuf' +python
    update_use 'dev-lang/python'   +readline
    update_use 'net-im/spectrum'   +whatsapp -skype +sqlite

    echo "*/*::mva **" > /etc/portage/package.accept_keywords/mva
    echo "*/*::azimut **" > /etc/portage/package.accept_keywords/azimut

    emerge -1 ${_packages}
}

configure_rootfs_build()
{
    # RDEPEND of autobuild, but not needed if only using libtool.so
    provide_package 'dev-scheme/guile'

    # Comes with perl/python base but I don't need it
    provide_package 'app-admin/perl-cleaner'
    provide_package 'app-eselect/eselect-python'

    # add user
    useradd --shell /bin/false --user-group --home-dir /home/user --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    # ncurses
    copy_gcc_libs

    # cleanup
    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
    # perl-cleanup
    find ${_EMERGE_ROOT}/ -type f -name '*.h' -o -name '*.pod' -print -delete
    # autobuild
    rm -rf ${_EMERGE_ROOT}/usr/share/{autogen,aclocal,pkgconfig}
    # python-cleanup
	find ${_EMERGE_ROOT}/ -depth \
			\( \
				\( -type d -a -name test -o -name tests -o -name testing \) \
				-o \
				\( -type f -a -name '*.pyo' -o -name '*.pyc' -o -name '*.whl' \) \
	        \) -print -exec rm -rf '{}' + 
}
