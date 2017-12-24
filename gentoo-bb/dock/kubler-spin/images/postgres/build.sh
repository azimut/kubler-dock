#
# build config
#
_packages="sys-apps/busybox dev-db/postgresql:9.6 sys-libs/timezone-data"

_emerge_bin="emerge"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_use 'dev-db/postgresql' +server
    update_keywords 'dev-db/postgresql:9.6' '+~'$(portageq envvar ARCH)

    # Install /bin/sh
    unprovide_package sys-apps/busybox
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
