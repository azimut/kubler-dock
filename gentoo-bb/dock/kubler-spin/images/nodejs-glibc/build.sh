#
# build config
#
_packages="sys-libs/zlib net-libs/http-parser dev-libs/libuv net-libs/nodejs"
_emerge_bin="emerge"
configure_bob()
{
    #update_use net-libs/nodejs +icu
    #update_keywords '=net-libs/nodejs-6.10.2' '+~amd64'
    update_keywords '=net-libs/nodejs-6*' '+**'
    update_keywords dev-libs/libuv +~amd64
    update_keywords net-libs/http-parser +~amd64
    # build binary packages first to avoid pulling in python in the next phase
    emerge -v sys-libs/zlib net-libs/http-parser dev-libs/libuv net-libs/nodejs
}

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    # install binary packages with no deps when building the root fs
    _emerge_opt="--nodeps"
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    copy_gcc_libs
}
