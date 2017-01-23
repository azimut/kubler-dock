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

	update_keywords '=net-p2p/rtorrent-9999' '+**'
    update_use '=net-p2p/rtorrent-9999' '-daemon' '+xmlrpc'

	update_keywords '=net-libs/libtorrent-9999' '+**'

	update_keywords 'dev-libs/xmlrpc-c' '+~arm'
    update_use 'dev-libs/xmlrpc-c' '+cgi' '-tools'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    # https://git.busybox.net/buildroot/tree/package/ncurses/ncurses.mk?id=e4ead9c13ccad1b89743fdd46e8675f45758aec3
#    find "${EMERGE_ROOT}"/usr/share/terminfo/ \! \
#                                  -name 'xterm' -o -name xterm-color -o -name xterm-xfree86 -o \
#                                  -name vt100 -o -name vt102 -o -name vt200 -o -name vt220 -o \
#                                  -name ansi -o -name linux \
#                                  -delete
    copy_gcc_libs
}
