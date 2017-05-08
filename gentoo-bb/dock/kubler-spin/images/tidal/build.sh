_packages="dev-haskell/tidal"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    layman -l | grep -q haskell && layman -d haskell
    layman -a haskell
    echo "*/*::haskell ~$(portageq envvar ARCH)" > /etc/portage/package.accept_keywords/haskell
    cat /etc/portage/package.accept_keywords/haskell
    update_use sys-libs/ncurses +minimal
}

configure_rootfs_build()
{
    provide_package 'app-admin/perl-cleaner'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build(){
    :

    # rm ipv6 geoip due I not support it
#    rmlist=(
#        /usr/share/tor/geoip6
#        /usr/lib/tmpfiles.d
#        /lib64/gentoo/functions.sh
#        /usr/lib/systemd
#        /etc/init.d
#        /etc/conf.d
#    )
#    rm -rvf ${rmlist[@]/#/${_EMERGE_ROOT}}

#   find "${_EMERGE_ROOT}"/lib/ "${_EMERGE_ROOT}"/usr/lib/ -type f -name '*.[ah]' -delete -print
}
