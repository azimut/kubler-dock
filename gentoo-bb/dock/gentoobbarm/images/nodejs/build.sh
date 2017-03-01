#
# build config
#
_packages="net-libs/http-parser dev-libs/libuv sys-libs/zlib =net-libs/nodejs-6.9.5"
_emerge_bin="emerge"

# nodejs ebuild pulls in python for node-gyp
_emerge_opt="--nodeps"

configure_bob()
{
    # Copy of openssl, due we use bob-musl directly as we can't inherith
    # the openssl builder directly maintaing both at the same time
    emerge -C net-misc/openssh
    update_use 'dev-libs/openssl' '-bindist' '-sslv3' '-zlib' '-tls-heartbeat'
    update_use 'app-misc/ca-certificates' '-cacert' '-insecure_certs'
    update_keywords 'app-misc/ca-certificates' '+~arm'

    update_keywords 'dev-libs/libuv'         '+~arm'
    update_keywords 'net-libs/http-parser'   '+~arm'
    update_keywords 'net-libs/nodejs'        '+~arm'

    emerge -q ${_packages}
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
}
