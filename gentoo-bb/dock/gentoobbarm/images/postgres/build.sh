#
# build config
#
_packages="sys-apps/busybox dev-db/postgresql"
_emerge_bin="emerge"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    # Install /bin/sh
    unprovide_package sys-apps/busybox
    update_use 'sys-libs/ncurses' '+minimal'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    install_suexec
    uninstall_package sys-apps/busybox
    mkdir /backup
}
