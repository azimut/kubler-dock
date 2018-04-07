#
# build config
#
_packages="
sys-apps/busybox
dev-db/postgresql:10
sys-libs/timezone-data"

_emerge_bin="emerge"

configure_bob(){
    update_use 'dev-db/postgresql' +server
    update_keywords 'dev-db/postgresql' '+~'$(portageq envvar ARCH)
    # Install /bin/sh
    unprovide_package sys-apps/busybox
    # needed for eselect
    emerge -1q dev-db/postgresql
}

configure_rootfs_build()
{
    # remove dep
    provide_package app-admin/eselect app-eselect/eselect-postgresql
}

finish_rootfs_build()
{
    # Fails on a .pc link
    set +e
    ROOT=${_EMERGE_ROOT} eselect postgresql set 10
    set -e
    install_suexec
    uninstall_package sys-apps/busybox
    mkdir /backup
}
