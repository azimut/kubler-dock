_packages="media-sound/supercollider =media-sound/jack-audio-connection-kit-0.124.1"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){

    layman -l | grep -q proaudio && layman -d proaudio
    layman -a proaudio

    [[ ! -d /distfiles/SuperDirt ]] && { cd /distfiles; git clone https://github.com/musikinformatik/SuperDirt; }
    [[   -d /distfiles/SuperDirt ]] && { cd /distfiles/SuperDirt; git pull --rebase; }

    update_keywords 'media-sound/supercollider' '+~amd64'
    update_keywords 'media-sound/jack-audio-connection-kit' '+**'

    #update_use 'media-sound/jack-audio-connection-kit'  +alsa

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
    
    # cp -ar /data/* /usr/share/SuperCollider/SCClassLibrary/

    # https://github.com/supercollider/supercollider/issues/1209
    # http://supercollider.github.io/development/building-raspberrypi
    # headless fix
    mv ${_EMERGE_ROOT}/usr/share/SuperCollider/SCClassLibrary/JITLib/GUI/ \
       ${_EMERGE_ROOT}/usr/share/SuperCollider/SCClassLibrary/scide_scqt/JITLibGUI

    mv ${_EMERGE_ROOT}/usr/share/SuperCollider/SCClassLibrary/Common/GUI/ \
       ${_EMERGE_ROOT}/usr/share/SuperCollider/SCClassLibrary/scide_scqt/
}
