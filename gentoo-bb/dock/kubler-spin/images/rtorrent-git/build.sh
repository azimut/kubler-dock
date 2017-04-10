#
# build config
#
_packages="=net-p2p/rtorrent-9999"
_emerge_bin="emerge"
set -x
configure_bob(){
    set +e
    layman -a pg_overlay
    set -e
    layman -E pg_overlay
    eix-update
}
#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_use 'sys-libs/ncurses'  '+minimal'
    update_use 'net-p2p/rtorrent'  '-daemon' '+xmlrpc'
    update_use 'dev-libs/xmlrpc-c' '+cgi' '-tools'

    update_keywords 'net-libs/libtorrent' '+**'
    update_keywords 'net-p2p/rtorrent'    '+**'
    update_keywords 'dev-libs/xmlrpc-c'   '+~amd64'
    #echo '=net-libs/libtorrent-9999 **' >> /etc/portage/package.accept_keywords/rtorrent
    #echo '=net-p2p/rtorrent-9999 **'    >> /etc/portage/package.accept_keywords/rtorrent
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    # ncurses
    copy_gcc_libs
}
