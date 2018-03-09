#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="
media-sound/supercollider::azimut
media-sound/supercollider-plugins::azimut
media-sound/jack-audio-connection-kit
media-sound/darkice
net-misc/icecast
x11-apps/mesa-progs
=media-libs/mesa-13.0.5
x11-libs/libXcursor
x11-libs/libXrandr
x11-drivers/xf86-video-intel"

configure_bob(){
    echo 'VIDEO_CARDS="intel i915 i965"' >> /etc/portage/make.conf
    add_overlay azimut 'https://github.com/azimut/overlay'

    update_keywords 'media-sound/darkice'                   '+**'
    update_keywords 'media-sound/jack-audio-connection-kit' '+**'
    update_keywords 'media-sound/supercollider'             '+**'
    update_keywords 'media-sound/supercollider-plugins'     '+**'

    update_use 'media-libs/alsa-lib'       -python
    update_use 'media-sound/darkice'       +jack +mp3
    update_use 'media-sound/supercollider' -portaudio +jack +sndfile +server -native
    update_use 'media-sound/supercollider-plugins' -native
    update_use 'net-misc/icecast'          -speex -yp -theora +ssl

    update_use media-libs/libepoxy +X
    update_use x11-base/xorg-server +glamor
}
#
# This hook is called just before starting the build of the root fs
#
configure_rootfs_build()
{
    init_docs "kubler-spin/overtone"
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
#    local riemann_version riemann_url riemann_file
#    riemann_version="0.2.14"
#    riemann_url=https://github.com/riemann/riemann/releases/download/"${riemann_version}"
#    riemann_file="riemann-${riemann_version}.tar.bz2"
#    wget "${riemann_url}/${riemann_file}"
#    wget "${riemann_url}/${riemann_file}".md5
#    md5sum -c "${riemann_file}".md5 || die "error validating ${riemann_file}"
#    tar xvjf "${riemann_file}"
#    mv /riemann-"${riemann_version}" "${_EMERGE_ROOT}"/riemann
#    sed -i 's/host "127.0.0.1"/host "0.0.0.0"/g' "${_EMERGE_ROOT}"/riemann/etc/riemann.config
     mkdir ${_EMERGE_ROOT}/overtone2
     cat >${_EMERGE_ROOT}/overtone2/project.clj <<EOF
(defproject tutorial "1.0"
  :dependencies [ [org.clojure/clojure "1.9.0-beta4"]
                  [overtone "0.10.2"]
                  [shadertone "0.2.5"] ])
EOF
#    lein new ${_EMERGE_ROOT}/overtone 
#    cd "${_EMERGE_ROOT}"/overtone
#    echo -en '(defproject tutorial "1.0"\n  :dependencies [ [org.clojure/clojure "1.8.0"]\n[overtone "0.10.2"] ])' >> project.clj
#    lein deps
    log_as_installed "manual install" "overtone" "https://github.com/overtone/overtone"
    # ncurses
    copy_gcc_libs
    # lame, need to add the builder
    cp /usr/${_LIB}/libudev.so ${_EMERGE_ROOT}/usr/${_LIB}/
    # 
    ln -s /usr/lib64/mesa/i965_dri.so ${_EMERGE_ROOT}/usr/lib64/dri/
}
