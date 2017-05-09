# If we do not set 1 version of ghc it tries to install 2 diff versions...
_packages="dev-haskell/tidal =dev-lang/ghc-8.0.2::haskell"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    layman -l | grep -q haskell && layman -d haskell
    layman -a haskell
    update_use sys-libs/ncurses +minimal
    update_use dev-lang/ghc     +binary
    echo "*/*::haskell ~$(portageq envvar ARCH)" > /etc/portage/package.accept_keywords/haskell
    # Some of the haskell packages try to install directly to ROOT without installing to local first. 
    # This breaks the intallation. So we install on the builder first.
    emerge -1q ${_packages}
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
#    find "${_EMERGE_ROOT}"/lib/ "${_EMERGE_ROOT}"/usr/lib/ -type f -name '*.[ah]' -delete -print
}
