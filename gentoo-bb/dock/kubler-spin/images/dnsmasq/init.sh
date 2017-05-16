#!/bin/sh
set -x
/usr/sbin/dnsmasq --no-daemon --log-queries --proxy-dnssec --no-resolv --no-hosts --port=5353 --server="$(nslookup dnscrypt-proxy | grep ddress | cut -f3 -d' ')#5353"
