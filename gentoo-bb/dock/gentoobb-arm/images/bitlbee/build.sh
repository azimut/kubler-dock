#
# build config
#
PACKAGES="x11-plugins/pidgin-skypeweb net-im/bitlbee"
EMERGE_BIN="emerge"
set -x
configure_bob(){
    update_use 'net-im/bitlbee' '-gnutls' '+plugins' '+purple' '-xmpp'
    update_use 'dev-libs/json-glib' '-introspection'
    update_use 'dev-libs/glib' '-mime' '-xattr'
    update_use 'net-im/pidgin' '-xscreensaver' '-gstreamer'
    update_use 'sys-libs/ncurses' '+minimal'

    provide_package 'dev-util/desktop-file-utils'
    provide_package 'virtual/logger'

    update_keywords 'net-im/bitlbee' '+**'
    update_keywords 'x11-plugins/pidgin-skypeweb' '+**'

    mask_package '=net-im/bitlbee-9999'
    mask_package '=x11-plugins/pidgin-skypeweb-9999'

    # pkg-postinstall of nss needs a binary of the same package. Not a bug
    #   in itself but it doesn't play well with ROOT and precompiled binaries.
    #   Might be something needs to be fixed on ROOT to have work properly.
    emerge -1q dev-libs/nss
}
#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    :
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    rm -rf "${EMERGE_ROOT}"/usr/share/bash-completion/ \
           "${EMERGE_ROOT}"/usr/share/sounds/ \
           "${EMERGE_ROOT}"/usr/share/pixmaps \
           "${EMERGE_ROOT}"/usr/share/gettext \
           "${EMERGE_ROOT}"/usr/share/aclocal \
           "${EMERGE_ROOT}"/usr/lib/systemd/ \
           "${EMERGE_ROOT}"/usr/lib/pkgconfig/ \
           "${EMERGE_ROOT}"/usr/lib/cmake/ \
           "${EMERGE_ROOT}"/usr/bin/*-config

    find "${EMERGE_ROOT}"/lib/ "${EMERGE_ROOT}"/usr/lib/ -type f \( -name '*.[acho]' -o -name '*.prl' \)  -delete

    copy_gcc_libs
}
