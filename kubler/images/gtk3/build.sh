_packages="x11-drivers/xf86-video-intel
x11-apps/mesa-progs
=media-libs/mesa-13.0.5"

configure_bob(){

    echo 'VIDEO_CARDS="intel i915 i965"' >> /etc/portage/make.conf

    update_use x11-base/xorg-server +glamor -udev
    update_use x11-libs/gtk+ +X
    update_use x11-libs/cairo +X
    update_use media-libs/libepoxy +X

    # /usr/bin/gtk-query-immodules-3.0
    set +e
    emerge -1vk --load-average=3 x11-libs/gtk+:3
    set -e

}

configure_rootfs_build()
{
    :
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
