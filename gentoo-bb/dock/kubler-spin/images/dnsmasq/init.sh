#!/bin/sh
if [ $SERVER = 'dnscrypt' ]; then
    server="--server=$(nslookup dnscrypt-proxy | grep ddress | cut -f3 -d' ')#5353"
else
    server="$SERVER"
fi
set -x
/usr/sbin/dnsmasq -C /etc/dnsmasq.conf ${server}
