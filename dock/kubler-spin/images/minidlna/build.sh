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
    # lame, need to add the builder
    #cp /usr/${_LIB}/libudev.so ${_EMERGE_ROOT}/usr/${_LIB}/
}
