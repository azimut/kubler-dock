#
# build config
#

_packages="net-dns/dnsmasq"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    update_use net-dns/dnsmasq '-dhcp' '-inotify' '-nls'
    #nls#update_use sys-libs/ncurses '+minimal'
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

#    find "${_EMERGE_ROOT}"/lib/ "${_EMERGE_ROOT}"/usr/lib/ -type f -name '*.[ah]' -delete -print
}
