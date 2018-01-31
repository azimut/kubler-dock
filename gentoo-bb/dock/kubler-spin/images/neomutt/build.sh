_packages="mail-client/neomutt"

configure_bob(){
#    add_overlay neomutt_gentoo https://github.com/neomutt/gentoo-neomutt
    update_keywords mail-client/neomutt '+~amd64'
    update_use mail-client/neomutt +smime +doc +lmdb
}

configure_rootfs_build()
{
    # add user
    useradd --shell /bin/false --user-group --home-dir /home/user --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user
}

finish_rootfs_build()
{
    # ncurses
    copy_gcc_libs
}
