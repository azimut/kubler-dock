#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="dev-dotnet/libgdiplus dev-dotnet/gtk-sharp"
_emerge_bin="emerge"
#_keep_headers=true
set -x
#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    link=http://chessv.org/downloads/ChessV2.0-RC2-Binary.zip
    mkdir -p /distfiles/chessv
    wget -O /distfiles/chessv/${link##*/} -c -q ${link}

    update_use x11-libs/cairo +X

    # https://bugs.gentoo.org/show_bug.cgi?id=611030
    # /usr/bin/gtk-query-immodules-3.0
    set +e
    emerge -j15 -1vK x11-libs/gtk+:2
    set -e

}
configure_rootfs_build()
{
    :
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    mkdir -p ${_EMERGE_ROOT}/opt
    unzip -e /distfiles/chessv/${link##*/} -d ${_EMERGE_ROOT}/opt
    chown -R user:user  ${_EMERGE_ROOT}/opt
}
