#
# build config
#
_packages="sys-apps/busybox"
_emerge_bin=emerge
configure_bob(){
    env | sort
}
#
# this method runs in the bb builder container just before starting the build of the rootfs
# 
configure_rootfs_build()
{
    update_use 'sys-apps/busybox' '+make-symlinks +static'
    mask_package '=sys-apps/busybox-9999'
    update_keywords 'sys-apps/busybox' '+~'$(portageq envvar ARCH)
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
# 
finish_rootfs_build()
{
    # cleanup
    rm -rf ${_EMERGE_ROOT}/etc/init.d/* ${_EMERGE_ROOT}/usr/share/udhcpc

    # log dir, root home dir
    mkdir -p "${_EMERGE_ROOT}"/var/log "${_EMERGE_ROOT}"/root
    # busybox crond setup
    mkdir -p "${_EMERGE_ROOT}"/var/spool/cron/crontabs
    chmod 0600 "${_EMERGE_ROOT}"/var/spool/cron/crontabs
    # eselect now uses a hard coded readlink path :/
    ln -sr "${_EMERGE_ROOT}"/bin/readlink "${_EMERGE_ROOT}"/usr/bin/readlink
}
