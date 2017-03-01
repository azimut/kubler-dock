#
# build config
#
PACKAGES="net-misc/curl"
EMERGE_BIN="emerge"
set -x

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
