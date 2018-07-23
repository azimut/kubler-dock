_packages="net-misc/minidlna"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    update_keywords net-misc/minidlna +~amd64
}

configure_rootfs_build()
{
    :
}

finish_rootfs_build(){
    # ncurses
    copy_gcc_libs
}
