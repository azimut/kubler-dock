_packages="
media-sound/supercollider::azimut
media-sound/jack-audio-connection-kit
media-sound/supercollider-plugins::azimut"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    add_overlay azimut 'https://github.com/azimut/overlay'

    update_keywords 'media-sound/jack-audio-connection-kit' '+**'
    update_keywords 'media-sound/supercollider'             '+**'
    update_keywords 'media-sound/supercollider-plugins'     '+**'

    update_use 'media-libs/alsa-lib'               -python
    update_use 'media-sound/supercollider'         -portaudio +jack +sndfile +server -native
    update_use 'media-sound/supercollider-plugins' -native
}

configure_rootfs_build()
{
    :
}

finish_rootfs_build(){
    # ncurses
    copy_gcc_libs
    # lame, need to add the builder
    cp /usr/${_LIB}/libudev.so ${_EMERGE_ROOT}/usr/${_LIB}/
}
