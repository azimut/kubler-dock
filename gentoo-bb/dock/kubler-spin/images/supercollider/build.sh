_packages="media-sound/supercollider"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    update_keywords 'media-sound/supercollider' '+~amd64'

    update_use 'sys-libs/ncurses'          +minimal
    update_use 'media-sound/supercollider' -portaudio +jack +sndfile +server
    update_use 'sys-apps/util-linux'       -suid -cramfs -pam
    update_use 'media-libs/alsa-lib'       -python
}

configure_rootfs_build()
{
    :
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build(){
    copy_gcc_libs
    # lame, need to add the builder
    cp /usr/lib64/libudev.so ${_EMERGE_ROOT}/usr/lib64/
}
