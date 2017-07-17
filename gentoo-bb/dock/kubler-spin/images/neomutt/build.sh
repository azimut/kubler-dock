_packages="mail-client/neomutt"

configure_bob(){
    rm -rf /distfiles/portage/neomutt
    cd /distfiles/portage
    git clone https://github.com/neomutt/gentoo-neomutt neomutt

    cat > /etc/portage/repos.conf/neomutt.conf <<EOF
[neomutt_gentoo]
location = /distfiles/portage/neomutt
masters = gentoo
auto-sync = no
EOF
    update_keywords mail-client/neomutt '+~amd64'
    update_use mail-client/neomutt +imap +smtp +sidebar +smime

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
