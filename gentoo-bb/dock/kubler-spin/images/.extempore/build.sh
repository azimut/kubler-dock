#
# build config
#

_packages="media-libs/alsa-lib
           sys-devel/llvm:0/3.8.0"

bdeps="x11-libs/libXrandr x11-libs/libXinerama x11-libs/libXcursor media-libs/mesa"
# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    # add extempore patch - mod to make it work with epatch
    # https://raw.githubusercontent.com/digego/extempore/master/extras/extempore-llvm-3.8.0.patch
    cp -vr /config/etc/portage/bashrc /etc/portage/
    cp -vr /config/etc/portage/patches /etc/portage/env

    # mesa
    echo 'VIDEO_CARDS="intel i915"' >> /etc/portage/make.conf

    # extempore uses llvm 3.8 - probably don't use clang
    update_keywords 'sys-devel/llvm:0/3.8.0' '+~amd64'
    update_keywords 'sys-devel/clang:0/3.8' '+~amd64'
    update_use 'sys-devel/llvm' +clang -python
    update_use 'media-libs/alsa-lib' -python

    emerge -1q dev-util/cmake ${_packages} ${bdeps}

    #rm -rf /distfiles/extempore2
    #rsync --delete -av --exclude=cmake-build --exclude=.git /distfiles/extempore/ /distfiles/extempore2

    cd /distfiles/extempore2
    sed -i 's/aot_extended ALL/aot_extended/g' CMakeLists.txt
    sed -i 's/CMAKE_STATIC_LIBRARY_SUFFIX/CMAKE_SHARED_LIBRARY_SUFFIX/g' CMakeLists.txt
    sed -i libs/external/gl.xtm -e 's/forced-gl-getprocaddress \#f/forced-gl-getprocaddress \#t/'
    sed -i libs/external/glcompat.xtm -e 's/forced-gl-getprocaddress \#f/forced-gl-getprocaddress \#t/'
    mkdir -p cmake-build/
    cd cmake-build
    make clean
    emerge -1q sys-devel/gcc:5.4.0
    gcc-config -l
    gcc-config x86_64-pc-linux-gnu-5.4.0
    export EXT_LLVM_DIR=/usr/
    export EXTEMPORE_FORCE_GL_GETPROCADDRESS=1
    cmake -DCMAKE_INSTALL_PREFIX=/opt ../
    sed -i 's#../LLVM##g' CMakeFiles/extended_deps.dir/build.make
    #make extempore aot_extended assets
    make extempore
    make extended_deps
    make aot_extended
    make install
    #make DESTDIR="${pkgdir}/" install
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
