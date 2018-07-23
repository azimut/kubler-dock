_packages="media-sound/mpd"

set -x

configure_bob(){
    update_use 'media-sound/mpd' \
               -curl -inotify +network \
               +vorbis +lame -ffmpeg +sqlite
}

configure_rootfs_build()
{
    :
}

finish_rootfs_build()
{
    copy_gcc_libs
}
