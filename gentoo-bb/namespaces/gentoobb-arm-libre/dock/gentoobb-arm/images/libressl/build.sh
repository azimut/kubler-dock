#
# build config
#
PACKAGES="dev-libs/libressl"
EMERGE_BIN="emerge"

configure_bob()
{
    :
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
