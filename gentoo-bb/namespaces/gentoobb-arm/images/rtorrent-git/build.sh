#
# build config
#
PACKAGES="=net-p2p/rtorrent-9999"
EMERGE_BIN="emerge"
configure_bob(){
    layman -a pg_overlay
}
#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_use 'sys-libs/ncurses' '+minimal'
    update_use 'net-p2p/rtorrent' '-daemon' '+xmlrpc'
    update_use 'dev-libs/xmlrpc-c' '+cgi' '-tools'
    update_keywords '=net-libs/libtorrent-9999' '+**'
    update_keywords '=net-p2p/rtorrent-9999' '+**'
    update_keywords 'dev-libs/xmlrpc-c' '+~arm'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    copy_gcc_libs
}
