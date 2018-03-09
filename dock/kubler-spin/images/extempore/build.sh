#
# build config
#

_packages="
media-libs/alsa-lib
media-libs/portaudio
=media-libs/mesa-13.0.5
x11-apps/mesa-progs
x11-drivers/xf86-video-intel
x11-libs/libXrandr
x11-libs/libXinerama
x11-libs/libXcursor"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    # add extempore patch - mod to make it work with epatch
    # https://raw.githubusercontent.com/digego/extempore/master/extras/extempore-llvm-3.8.0.patch
    cp -vr /config/etc/portage/bashrc /etc/portage/
    cp -vr /config/etc/portage/patches /etc/portage/

    # mesa
    echo 'VIDEO_CARDS="intel i915 i965"' >> /etc/portage/make.conf

    # extempore uses llvm 3.8 - probably don't use clang
    #update_keywords 'sys-devel/llvm:0/3.8.0' '+~amd64'
    #update_keywords 'sys-devel/clang:0/3.8' '+~amd64'
    #update_use 'sys-devel/llvm' +clang -python
    update_use 'sys-devel/llvm' -clang -python
    update_use 'media-libs/alsa-lib' -python

    update_keywords dev-util/cmake '+~amd64'
    update_keywords sys-devel/llvm '+~amd64'

    update_use x11-base/xorg-server +glamor -udev
    update_use media-libs/libepoxy +X

    # media-libs/portaudio media-libs/alsa-lib
    #emerge --ignore-default-opts -q -b =dev-util/cmake-3.9.5 sys-devel/llvm:0/3.8.0
    emerge -q =dev-util/cmake-3.9.5 sys-devel/llvm:0/3.8.0
    emerge -q media-libs/portaudio media-libs/alsa-lib
    emerge -q ${_packages}

    # rm -rf /distfiles/extempore2
    # rsync --delete -av --exclude=cmake-build --exclude=.git /distfiles/extempore/ /distfiles/extempore2

    ### /distfiles/extempore2/cmake-build/extempore --nobase --noaudio --port=17085 --eval "(impc:aot:compile-xtm-file \"libs/external/audio_dsp_ext.xtm\")"

    # cd /distfiles/extempore2
    # sed -i 's/aot_extended ALL/aot_extended/g' CMakeLists.txt
    # sed -i 's/CMAKE_STATIC_LIBRARY_SUFFIX/CMAKE_SHARED_LIBRARY_SUFFIX/g' CMakeLists.txt
    # sed -i libs/external/gl.xtm -e 's/forced-gl-getprocaddress \#f/forced-gl-getprocaddress \#t/'
    # sed -i libs/external/glcompat.xtm -e 's/forced-gl-getprocaddress \#f/forced-gl-getprocaddress \#t/'
    # mkdir -p cmake-build/
    # cd cmake-build
    # make clean
    # export EXT_LLVM_DIR=/usr/
    # export EXTEMPORE_FORCE_GL_GETPROCADDRESS=1
    # cmake -DCMAKE_INSTALL_PREFIX=/opt ../
    # sed -i 's#../LLVM##g' CMakeFiles/extended_deps.dir/build.make
    # #make extempore aot_extended assets
    # make extempore
    # make extended_deps # opengl
    # LD_LIBRARY_PATH=/distfiles/extempore2/  make aot_extended
    # make install
    # #make DESTDIR="${pkgdir}/" install
}

configure_rootfs_build()
{
    provide_package 'app-admin/perl-cleaner'
    provide_package 'app-eselect/eselect-python'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build(){
    mkdir -p ${_EMERGE_ROOT}/opt
    cp -vr /opt/bin ${_EMERGE_ROOT}/opt/
    copy_gcc_libs
}
