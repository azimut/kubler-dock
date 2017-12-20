#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="dev-qt/qtcore:5 dev-qt/qtgui:5"

#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    update_use dev-libs/libpcre +pcre16
    update_use dev-qt/qtgui -udev
    update_use x11-libs/libxcb +xkb
    update_use x11-libs/libxkbcommon +X

    update_use 'sys-apps/util-linux' -suid -cramfs -pam
    update_use 'sys-libs/ncurses' +minimal
    echo 'USE="${USE} -xattr -acl -deprecated -readline -bindist"' >> /etc/portage/make.conf

    set +e
    emerge --with-bdeps=y --deep -j20 -vK ${_packages} || emerge --with-bdeps=y -v ${_packages}
    set -e
}
configure_rootfs_build()
{
    # skip RDEPEND on eclass for x11-libs/libxcb
    provide_package dev-lang/python
}
#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    # The idea is that the eselects will run under ROOT but 
    #   when not needed we can get ride of bash
    uninstall_package 'app-shells/bash' 'sys-libs/readline'

    # ncurses
    copy_gcc_libs

    # unprovide the provided
    unprovide_package 'dev-lang/python'

    # Needed after we removed bash
    rm ${_EMERGE_ROOT}/bin/sh
    ln -sf /bin/busybox ${_EMERGE_ROOT}/bin/sh

    # python-cleanup
    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
	find ${_EMERGE_ROOT}/ -depth \
			\( \
				\( -type d -a -name test -o -name tests -o -name testing -o -name __pycache__ \) \
				-o \
				\( -type f -a -name '*.pyo' -o -name '*.pyc' -o -name '*.whl' \) \
	        \) -print -exec rm -rf '{}' + 
}
