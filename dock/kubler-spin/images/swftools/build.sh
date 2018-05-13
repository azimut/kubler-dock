#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="media-gfx/swftools"

#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    
    update_use dev-libs/glib +mime
    update_use x11-libs/gtk+ +X
    update_use x11-libs/cairo +X
    update_use media-libs/libepoxy +X
    update_use dev-libs/libxml2 +python

    update_keywords media-gfx/swftools +~amd64

    # https://bugs.gentoo.org/show_bug.cgi?id=611030
    # /usr/bin/gtk-query-immodules-3.0
    set +e
    emerge -1q x11-libs/gtk+:3
    set -e

}
configure_rootfs_build()
{
     # add user
    useradd --shell /bin/false \
            --user-group \
            --home-dir /home/user \
            --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    # Stockfish
    copy_gcc_libs

    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
    find ${_EMERGE_ROOT}/ -depth \
	 \( \
	 \( -type d -a -name test -o -name tests -o -name testing \) \
	 -o \
	 \( -type f -a -name '*.pyo' -o -name '*.pyc' \) \
	 \) -print -exec rm -rf '{}' + 
}
