_packages="media-video/ffmpeg www-client/firefox-bin"

configure_bob(){
    #
    # ffmpeg BEGING
    # 
    update_use dev-libs/glib -mime -xattr
    update_use 'media-video/ffmpeg' -X +pulseaudio -encode -network
    update_use 'media-sound/pulseaudio' -udev -tcpd -alsa-plugin -asyncns -webrtc-aec
    update_use 'sys-apps/util-linux' -suid -cramfs -pam
    echo 'USE="${USE} -readline"' >> /etc/portage/make.conf
    #
    # END
    #
    echo 'USE="${USE} -acl"' >> /etc/portage/make.conf
    update_use x11-libs/gtk+ +X
    update_use x11-libs/cairo +X
    update_use media-libs/libepoxy +X
    
    update_use www-client/firefox-bin -startup-notification
    update_keywords 'www-client/firefox-bin' '+~'$(portageq envvar ARCH)

    # /usr/bin/gtk-query-immodules-3.0
    emerge -1q x11-libs/gtk+:2
    emerge -1q x11-libs/gtk+:3
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
}
