_packages="media-video/ffmpeg"

configure_bob(){
    update_use dev-libs/glib -mime -xattr
    update_use 'media-video/ffmpeg' +X +pulseaudio +encode
    update_use 'media-sound/pulseaudio' -udev -tcpd -alsa-plugin -asyncns
    update_use 'sys-apps/util-linux' -suid -cramfs -pam
    echo 'USE="${USE} -readline"' >> /etc/portage/make.conf
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
