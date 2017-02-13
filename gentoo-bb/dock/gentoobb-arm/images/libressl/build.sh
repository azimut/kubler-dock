#
# build config
#
PACKAGES="dev-libs/libressl"
EMERGE_BIN="emerge"

configure_bob()
{
    update_use 'app-misc/ca-certificates' '-cacert' '-insecure_certs'
    update_keywords 'app-misc/ca-certificates' '+~arm'
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
