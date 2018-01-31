#
# build config
#

_packages="dev-libs/libltdl net-dns/dnscrypt-proxy"

configure_bob(){
    update_use      'dev-libs/libsodium'     +minimal
    update_keywords 'net-libs/ldns'          +**
    update_keywords 'net-dns/dnscrypt-proxy' +**
}

configure_rootfs_build()
{
    :
}

finish_rootfs_build()
{
    :
}
