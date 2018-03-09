_packages="app-emulation/wine"
_emerge_bin="emerge"

set -x

configure_bob(){
    #update_use  app-emulation/wine -perl -udisks +X -realtime
    update_use  app-emulation/wine -perl -udisks +X
    update_use 'sys-apps/util-linux' -suid -cramfs -pam
    update_use 'sys-libs/ncurses' +minimal
    update_use 'net-libs/gnutls' -sslv3 -idn
    update_use 'app-shells/bash' -net
    echo 'USE="${USE} -xattr -acl -deprecated -readline -bindist"' >> /etc/portage/make.conf
}

configure_rootfs_build()
{
    # add user
    useradd --shell /bin/false --user-group --home-dir /home/user --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user
}

finish_rootfs_build(){
    copy_gcc_libs
}
