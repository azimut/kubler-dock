#
# build config
#
PACKAGES="dev-libs/openssl"
EMERGE_BIN="emerge"

configure_bob()
{
    # enable ECDH
    emerge -C net-misc/openssh
    update_use 'dev-libs/openssl' '-bindist' '-sslv3'
    unprovide_package 'dev-libs/openssl'
    emerge dev-libs/openssl
}

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    :
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
