_packages="x11-plugins/purple-rocketchat::azimut
           x11-plugins/purple-hangouts
           net-im/bitlbee"

# force native build
_emerge_bin="emerge"

set -x

configure_bob(){
    add_overlay azimut 'https://github.com/azimut/overlay'

    mask_package '=net-im/bitlbee-9999'

    provide_package 'dev-util/desktop-file-utils'
    provide_package 'virtual/logger'
    
    update_keywords 'net-im/bitlbee'                '+**'
    update_keywords 'x11-plugins/purple-rocketchat' '+**'
    update_keywords 'x11-plugins/purple-hangouts'   '+**'

    # Note: You cannot enable ssl CA authentication without gnutls
    update_use 'net-im/bitlbee'     -gnutls +plugins +purple -xmpp +twitter
    update_use 'net-im/pidgin'      -xscreensaver -gstreamer
    update_use 'dev-libs/json-glib' -introspection

    # needed? yes
    emerge -1q dev-libs/nss
}
#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    # https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=c4a2ee848f7151bb12d262f97633537925b17a20
    # https://bugs.gentoo.org/show_bug.cgi?id=599586
    # provide_package 'sys-apps/util-linux'
    :
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    rm -rvf "${_EMERGE_ROOT}"/usr/share/bash-completion \
            "${_EMERGE_ROOT}"/usr/share/sounds \
            "${_EMERGE_ROOT}"/usr/share/pixmaps \
            "${_EMERGE_ROOT}"/usr/lib/systemd/ 

    find "${_EMERGE_ROOT}"/lib/ "${_EMERGE_ROOT}"/usr/lib/ \
         -type f -name '*.[ah]' -delete -print

    # When mounting a docker volume we need this gone
    rm -rvf "${_EMERGE_ROOT}"/var/lib/bitlbee/purple
    >${_EMERGE_ROOT}/etc/bitlbee/motd.txt
    cat > "${_EMERGE_ROOT}"/etc/bitlbee/bitlbee.conf <<EOF
[settings]
Protocols = telegram eionrobb-rocketchat twitter
[defaults]
EOF

    # ncurses
    copy_gcc_libs
}
