_packages="media-video/ffmpeg
www-client/firefox-bin
x11-drivers/xf86-video-intel
x11-apps/mesa-progs
=media-libs/mesa-13.0.5"

configure_bob(){

    echo 'VIDEO_CARDS="intel i915 i965"' >> /etc/portage/make.conf

    update_use sys-apps/util-linux +udev

    update_use 'media-video/ffmpeg' -X +pulseaudio -encode -network
    update_use 'media-sound/pulseaudio' -udev -tcpd -alsa-plugin -asyncns -webrtc-aec

    update_use x11-base/xorg-server +glamor -udev
    #
    update_use x11-libs/gtk+ +X
    update_use x11-libs/cairo +X
    update_use media-libs/libepoxy +X
    
    update_use www-client/firefox-bin -startup-notification
    update_keywords 'www-client/firefox-bin' '+~'$(portageq envvar ARCH)

    # /usr/bin/gtk-query-immodules-3.0
    set +e
    emerge -1vk --load-average=3 x11-libs/gtk+:3 x11-libs/gtk+:2
    set -e
}

configure_rootfs_build()
{
    provide_package dev-lang/python
    # add user
    useradd --shell /bin/false --user-group --home-dir /home/user --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user
}

finish_rootfs_build()
{
    # ncurses
    copy_gcc_libs
    # python-cleanup
    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
	find ${_EMERGE_ROOT}/ -depth \
			\( \
				\( -type d -a -name test -o -name tests -o -name testing -o -name __pycache__ \) \
				-o \
				\( -type f -a -name '*.pyo' -o -name '*.pyc' -o -name '*.whl' \) \
	        \) -print -exec rm -rf '{}' + 
  ln -s /usr/${_LIB}/mesa/i965_dri.so ${_EMERGE_ROOT}/usr/${_LIB}/dri/
}
