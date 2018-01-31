_packages=""
_emerge_bin="emerge"

set -x

configure_bob(){
    link=http://www.chessv.org/downloads/ChessV_095_64-bit.zip
    mkdir -p /distfiles/chessv
    cd /distfiles/chessv
    set +e
    md5sum --check <(echo 5ce8c8e3dbcf28ebd096a089fc477af7 ${link##*/}) || wget -O ${link##*/} -c -q ${link}
    set -e
    cd -
}
configure_rootfs_build()
{
    :
}
finish_rootfs_build()
{
    mkdir -p ${_EMERGE_ROOT}/opt
    unzip -e /distfiles/chessv/${link##*/} -d ${_EMERGE_ROOT}/opt
    chown -R user:user  ${_EMERGE_ROOT}/opt
}
