#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="=dev-lang/mono-4.8.0.524"
_emerge_bin="emerge"
set -x
#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    update_use 'sys-apps/util-linux' -suid -cramfs -pam
    update_use 'sys-libs/ncurses' +minimal
    echo 'USE="${USE} -xattr -acl -deprecated -readline -bindist"' >> /etc/portage/make.conf

    update_keywords sys-libs/obstack-standalone '+~amd64'
    update_keywords dev-lang/mono '+~amd64'
    update_use dev-lang/mono '+minimal'
    unmask_package '=dev-libs/elfutils-0.166'

    set +e
    emerge -v --with-bdeps=y --deep -K -j15 ${_packages} || emerge -v -k --with-bdeps=y --deep ${_packages}
    set -e
}
configure_rootfs_build()
{
    # add user
    useradd --shell /bin/false --user-group --home-dir /home/user --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    copy_gcc_libs
}
