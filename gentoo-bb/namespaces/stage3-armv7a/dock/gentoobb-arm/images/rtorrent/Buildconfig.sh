#
# build config
#
PACKAGES="net-p2p/rtorrent"
EMERGE_BIN="emerge"
#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_keywords 'net-p2p/rtorrent' '+~arm'
    update_keywords 'net-libs/libtorrent' '+~arm'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    copy_gcc_libs
}
