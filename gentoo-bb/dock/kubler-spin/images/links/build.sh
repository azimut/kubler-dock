_packages="www-client/links"

configure_bob(){
    #echo 'PYTHON_TARGETS=""' >> /etc/portage/make.conf
    update_use www-client/links +X +jpeg
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
    :
    mkdir -p ${_EMERGE_ROOT}/usr/lib/
    cp /usr/lib/gcc/x86_64-gentoo-linux-musl/4.9.4/libgomp.so ${_EMERGE_ROOT}/usr/lib/
    cp /usr/lib/gcc/x86_64-gentoo-linux-musl/4.9.4/libgomp.so.1 ${_EMERGE_ROOT}/usr/lib/
#    copy_gcc_libs
}
