#
# build config
#
PACKAGES="net-libs/http-parser dev-libs/libuv dev-libs/openssl"

configure_bob()
{
    # enable ECDH
    emerge -C net-misc/openssh
    update_use 'dev-libs/openssl' '-bindist' '-sslv3' '-zlib' '-tls-heartbeat'
    update_use 'app-misc/ca-certificates' '-cacert' '-insecure_certs'
    update_keywords 'app-misc/ca-certificates' '+~arm'
    unprovide_package 'dev-libs/openssl'
    emerge dev-libs/openssl

    # nodejs ebuild pulls in python for node-gyp
    # we only want the runtime deps for node in this image
    NODEJS_VERSION=$(get_package_version 'net-libs/nodejs')
    emerge net-libs/nodejs
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
    copy_gcc_libs
    tar xjvf "/packages/${BOB_CHOST}/net-libs/nodejs-${NODEJS_VERSION}.tbz2" -C "${EMERGE_ROOT}"
    log_as_installed "manual_install" "net-libs/nodejs-${NODEJS_VERSION}"
}
