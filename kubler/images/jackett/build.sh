#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="=dev-lang/mono-4.8.0.524"
#_keep_headers=true
set -x
#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    update_keywords sys-libs/obstack-standalone '+~amd64'
    update_keywords dev-lang/mono '+~amd64'
    update_use dev-lang/mono '+minimal'
    unmask_package '=dev-libs/elfutils-0.166'
    jackettver=$(wget -q https://github.com/Jackett/Jackett/releases/latest -O - | grep -E \/tag\/ | awk -F "[><]" '{print $3}' | tail -n1)
    mkdir -p /distfiles/${jackettver}
    wget -O /distfiles/${jackettver}/Jackett.Binaries.Mono.tar.gz -c -q https://github.com/Jackett/Jackett/releases/download/${jackettver}/Jackett.Binaries.Mono.tar.gz
}
configure_rootfs_build()
{
    # add user
    useradd --shell /bin/false --user-group --home-dir /home/user --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user

    tar xzf /distfiles/${jackettver}/Jackett.Binaries.Mono.tar.gz -C  ${_EMERGE_ROOT}/home/user/
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    copy_gcc_libs
    chown -R user:user  ${_EMERGE_ROOT}/home/user
}
