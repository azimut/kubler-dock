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

finish_rootfs_build()
{
    urls=(
        https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt
        https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt
    )
    for url in ${urls[@]}; do
        wget -O - $url | sed 's/^/0.0.0.0 /g' >> ${_EMERGE_ROOT}/etc/hosts.ads
    done

    cat > ${_EMERGE_ROOT}/etc/dnsmasq.conf <<EOF
addn-hosts=/etc/hosts.ads
bogus-priv
cache-size=1000
domain-needed
local-ttl=360
log-queries
min-cache-ttl=360
no-daemon
no-hosts
no-poll
no-resolv
port=5353
proxy-dnssec
EOF

    # clean up
    rm -rvf "${_EMERGE_ROOT}"/usr/lib/tmpfiles.d \
            "${_EMERGE_ROOT}"/usr/lib/systemd \
            "${_EMERGE_ROOT}"/etc/init.d \
            "${_EMERGE_ROOT}"/etc/conf.d

    # bind
    copy_gcc_libs
#    find "${_EMERGE_ROOT}"/lib/ "${_EMERGE_ROOT}"/usr/lib/ -type f -name '*.[ah]' -delete -print
}
