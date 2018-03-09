_packages="
=virtual/emacs-25
dev-lisp/sbcl
media-libs/libsdl2
media-libs/freeglut
=media-libs/mesa-13.0.5
app-emacs/slime"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
#    add_overlay lisp https://github.com/gentoo-mirror/lisp 

    update_keywords app-emacs/slime '+**'
    mask_package '=app-emacs/slime-9999'
    echo 'USE="$USE X"' >> /etc/portage/make.conf
    echo 'VIDEO_CARDS="i915 i965 intel"' >> /etc/portage/make.conf
    update_use app-editors/emacs -X
    update_use media-libs/mesa +gles2 +egl +dri3
    #update_use media-libs/libsdl2 +sound +alsa +haptic +gles +opengl
    update_use media-libs/libsdl2 +sound +oss +haptic +gles +opengl

    update_use 'media-sound/pulseaudio' -udev -tcpd -alsa-plugin -asyncns -webrtc-aec
    update_use 'media-libs/alsa-lib'               -python

    # needed for babel
#    update_keywords '=dev-lisp/alexandria-9999' '+**'

    #echo "*/*::lisp ~$(portageq envvar ARCH)" > /etc/portage/package.accept_keywords/lisp

    # needed or some emacs detection
    emerge -v -k --with-bdeps=y --deep ${_packages}
}

configure_rootfs_build()
{
    :
}

finish_rootfs_build(){
    copy_gcc_libs
    # slime needs this
    ln -sf /usr/bin/sbcl \
          ${_EMERGE_ROOT}/usr/bin/lisp
}
