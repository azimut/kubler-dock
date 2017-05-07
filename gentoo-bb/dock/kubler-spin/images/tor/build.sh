#
# build config
#

# libpcap
#     apparently used to drop caps https://trac.torproject.org/projects/tor/ticket/8195
#     caps dropped here https://github.com/torproject/tor/blob/7505f452c865ef9ca5be35647032f93bfb392762/src/common/compat.c#L2000
#     docker caps kept https://github.com/docker/docker/blob/master/oci/defaults_linux.go#L62-L77
#     alpine is missing this...
_packages="sys-libs/libcap net-vpn/tor"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    update_keywords '=net-vpn/tor-0.3*' '+~'$(portageq envvar ARCH)
    update_keywords 'sys-libs/libseccomp' '+~'$(portageq envvar ARCH)
    update_use 'sys-libs/libcap' '-pam'
}

configure_rootfs_build()
{
    # needed for tor docs
    provide_package 'app-text/asciidoc'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build(){

    # install custom minimal config - we do it here to be arch independent
    cat > "${_EMERGE_ROOT}"/etc/tor/torrc.default <<EOF
SocksPort 0.0.0.0:9050
Log notice stderr
DataDirectory /var/lib/tor/data
AvoidDiskWrites 1
Sandbox 1
EOF
    chown -R tor "${_EMERGE_ROOT}"/etc/tor/

    # rm ipv6 geoip due I not support it
    rmlist=(
        /usr/share/tor/geoip6
        /usr/lib/tmpfiles.d
        /lib64/gentoo/functions.sh
        /usr/lib/systemd
        /etc/init.d
        /etc/conf.d
    )
    rm -rvf ${rmlist[@]/#/${_EMERGE_ROOT}}

#   find "${_EMERGE_ROOT}"/lib/ "${_EMERGE_ROOT}"/usr/lib/ -type f -name '*.[ah]' -delete -print
}
