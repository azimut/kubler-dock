#
# build config
#
_packages="dev-libs/libressl"
_emerge_bin="emerge"

configure_bob()
{
    update_use 'app-misc/ca-certificates' '-cacert' '-insecure_certs'
    # TODO?
    # https://packages.gentoo.org/useflags/kernel_linux
    #mkdir -p  /etc/portage/profile/package.use.force/
    #echo 'sys-apps/debianutils -kernel_linux' > /etc/portage/profile/package.use.force/debianutils
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
