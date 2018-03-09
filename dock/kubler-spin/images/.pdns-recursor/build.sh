#
# build config
#

_packages="dev-lua/luasocket net-dns/pdns-recursor"

configure_bob(){
    update_use net-dns/pdns-recursor +luajit
    echo 'USE="${USE} -readline"' >> /etc/portage/make.conf
}

configure_rootfs_build()
{
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
    :
    # ncurses
    #copy_gcc_libs
}
