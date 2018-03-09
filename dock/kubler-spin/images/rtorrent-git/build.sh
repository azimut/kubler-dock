#
# build config
#
_packages="=net-p2p/rtorrent-9999
           app-misc/screen"
_emerge_bin="emerge"
set -x
configure_bob(){
    layman -l | grep -q pg_overlay && layman -d pg_overlay
    layman -a pg_overlay
    eix-update
}
#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_use 'dev-libs/xmlrpc-c' +cgi     -tools
    update_use 'net-p2p/rtorrent'  -daemon  +xmlrpc
    update_use 'sys-libs/ncurses'  +minimal
    update_use 'app-misc/screen'   -pam

    # latest rtorrent release was on sep 2015
    # https://github.com/rakshasa/rtorrent/tree/feature-bind
    update_keywords 'net-libs/libtorrent' '+**'
    update_keywords 'net-p2p/rtorrent'    '+**'
    update_keywords 'dev-libs/xmlrpc-c'   '+~amd64'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    # ncurses
    copy_gcc_libs
}
