#
# build config
#
PACKAGES="sys-apps/baselayout"
EMERGE_BIN=emerge
set -x
configure_bob()
{
    wget -c -O /distfiles/node-v6.9.4-linux-armv7l.tar.gz -S http://nodejs.org/dist/v6.9.4/node-v6.9.4-linux-armv7l.tar.gz
    mkdir -p "${EMERGE_ROOT}"/usr/
    tar xzvf /distfiles/node-v6.9.4-linux-armv7l.tar.gz -C "${EMERGE_ROOT}"/usr/ --strip-components=1
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
    #copy_gcc_libs
    #tar xjvf "/packages/armv7a-hardfloat-linux-musleabi/net-libs/nodejs-${NODEJS_VERSION}.tbz2" -C ""${EMERGE_ROOT}""
    log_as_installed "manual_install" "nodejs"
}
