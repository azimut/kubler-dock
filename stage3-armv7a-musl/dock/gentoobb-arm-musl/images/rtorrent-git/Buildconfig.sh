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
	update_keywords '=net-p2p/rtorrent-9999' '+**'
	update_keywords '=net-libs/libtorrent-9999' '+**'
    update_use '=net-p2p/rtorrent-9999' '-daemon' '+xmlrpc'
    update_use 'dev-libs/xmlrpc-c' '-cgi'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    copy_gcc_libs
}
