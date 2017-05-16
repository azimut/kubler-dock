#
# build config
#

_packages="net-dns/dnsmasq net-dns/bind-tools"

# force native compilation
_emerge_bin="emerge"

configure_bob(){
    update_use net-dns/dnsmasq '-dhcp' '-inotify' '-nls'
    update_use 'net-dns/bind-tools' -ssl -seccomp -readline
}

configure_rootfs_build()
{
    :
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    # clean up
    rm -rvf "${_EMERGE_ROOT}"/usr/lib/tmpfiles.d \
            "${_EMERGE_ROOT}"/usr/lib/systemd \
            "${_EMERGE_ROOT}"/etc/init.d \
            "${_EMERGE_ROOT}"/etc/conf.d
    copy_gcc_libs

#    find "${_EMERGE_ROOT}"/lib/ "${_EMERGE_ROOT}"/usr/lib/ -type f -name '*.[ah]' -delete -print
}
