#
# build config
#

_packages="net-irc/weechat"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    update_keywords 'net-irc/weechat' '+**'
    mask_package '=net-irc/weechat-9999'
    update_use 'sys-libs/ncurses' +minimal
    update_use 'net-irc/weechat'  -exec -fifo -xfer \
                                  -spell -python_single_target_python2_7 \
                                  -python_targets_python2_7 +python_single_target_python3_4

    # http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html
    # The GNU Readline library provides a set of functions for use by applications
    # that allow users to edit command lines as they are typed in. 
    echo 'USE="${USE} -readline -xattr -acl -deprecated"' >> /etc/portage/make.conf

    emerge -1q ${_packages}
}

configure_rootfs_build()
{
    # RDEPEND of autobuild, but not needed if only using libtool.so
    provide_package 'dev-scheme/guile'
    # Comes with perl/python base but I don't need it
    provide_package 'app-admin/perl-cleaner'
    provide_package 'app-eselect/eselect-python'

    #useradd -s /bin/false -U -d /home/newsbeuter -m newsbeuter
    #mkdir -p ${_EMERGE_ROOT}/home/newsbeuter/.newsbeuter
    #chown -R newsbeuter:newsbeuter ${_EMERGE_ROOT}/home/newsbeuter
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
    rm -rf ${_EMERGE_ROOT}/usr/share/{autogen,aclocal,pkgconfig}
	find ${_EMERGE_ROOT}/ -depth \
			\( \
				\( -type d -a -name test -o -name tests -o -name testing \) \
				-o \
				\( -type f -a -name '*.pyo' -o -name '*.pyc' \) \
	        \) -print -exec rm -rf '{}' + 
}
