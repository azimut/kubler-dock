#
# build config
#
PACKAGES="sys-libs/musl"
EMERGE_BIN="emerge"
TIMEZONE="${BOB_TIMEZONE:-UTC}"

configure_bob() {
    # set timezone
    echo "${TIMEZONE}" > /etc/timezone
}

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    # as we broke the normal builder chain, recreate the docs for the busybox image
    init_docs 'gentoobb/busybox'
    update_use 'sys-apps/busybox' '+static +make-symlinks'
    generate_doc_package_installed 'sys-apps/busybox'
    # fake portage install
    provide_package sys-apps/portage
    # set locales
    mkdir -p "${EMERGE_ROOT}"/etc
    # set timezone
    cp /etc/timezone "${EMERGE_ROOT}"/etc/
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
