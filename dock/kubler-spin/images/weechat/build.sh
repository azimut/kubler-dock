#
# build config
#

_packages="net-irc/weechat dev-python/websocket-client"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    #[[ ! -d /distfiles/scripts ]] && { cd /distfiles; git clone https://github.com/weechat/scripts; }
    #[[   -d /distfiles/scripts ]] && { cd /distfiles/scripts; git pull --rebase; }

    # https://wiki.gentoo.org/wiki/Project:Python/PYTHON_TARGETS
    echo 'PYTHON_TARGETS="python2_7"'       >> /etc/portage/make.conf
    echo 'PYTHON_SINGLE_TARGET="python2_7"' >> /etc/portage/make.conf
    echo 'USE_PYTHON="2.7"'                 >> /etc/portage/make.conf

    #?
    #mask_package '>'$(ls -d  /var/db/pkg/dev-lang/perl-*/ | cut -f5,6 -d/)

    # grab latest version, but not the one on git
    update_keywords 'net-irc/weechat' '+**'
    mask_package '=net-irc/weechat-9999'

    update_use 'dev-lang/lua' +deprecated
    update_use 'net-irc/weechat' -exec -fifo -xfer -spell +lua +perl +python

    # perl get's a new version every new day and break libperl...
    #   current stage3 has 5.22 but one of the new virtual/perl-Data-Dumper needs 5.24
    emerge -1q perl
    perl-cleaner  --all

    emerge -q1 ${_packages}
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
