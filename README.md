* `stage3-armv7a` files used to create a build from a stage3
* `stage3-armv7a-musl` files used to create a build from a stage3 armv7a musl hardened image

DONE:
* gcc-config hardened
* minimal ncurses
* disable sslv3 on openssl
* musl
* rtorrent-git
* nodejs
* bitlbee
* flood
* libressl
https://forums.gentoo.org/viewtopic-p-7942264.html?sid=ce507c627ab94218a8a346421d169b72

IN PROGRESS:

TODO:
* best practices
https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/
* kubernetes
* grsecurity
* cgroups (control groups)
Set cpu, memory limits.
* rootless containers
* seccomp
https://docs.docker.com/engine/security/seccomp/ <- BLACKLIST
https://wiki.mozilla.org/Security/Sandbox/Seccomp 
grep Seccomp /proc/<pid>/status
https://github.com/docker/labs/blob/197cd96a728f17e76d56489832c3cbd892fa52d8/security/seccomp/README.md
* capabilities
https://docs.docker.com/engine/security/security/
https://github.com/docker/docker/blob/master/oci/defaults_linux.go#L62-L77 <- WHITELIST
http://man7.org/linux/man-pages/man7/capabilities.7.html
Make a list of drop caps.
* apparmor
https://docs.docker.com/engine/security/apparmor/


----

# Desktop
## CoreOS !?
## redazul - iptables restricted
### mutt
### davmail
### bitlbee
### weechat
### dnsmasq - adblock / tor?
## Crypt
https://github.com/jedisct1/dnscrypt-proxy
## Lists
https://github.com/StevenBlack/hosts
https://github.com/pi-hole/pi-hole
https://github.com/zant95/hBlock
https://github.com/oznu/docker-dns-ad-blocker
https://github.com/quidsup/notrack
https://gist.github.com/ahupowerdns/bb1a043ce453a9f9eeed
https://github.com/mozilla-mobile/focus
## Scripting
https://doc.powerdns.com/md/recursor/scripting/

$ dnsmasq --no-daemon --log-queries
http://stackoverflow.com/questions/36360674/combining-log-entries-with-logstash

### tidal/supercollider

# Server
## redazul - iptables restricted
### flexget
### rtorrent
### flood
## vidalia - tor based network
https://wiki.archlinux.org/index.php/tor
https://wiki.gentoo.org/wiki/Tor
### newsbeuter? RSS
- github - skypeweb,wee-slack
### RSS proxy
https://github.com/RSS-Bridge/rss-bridge/blob/master/bridges/AmazonBridge.php
https://www.last.fm/es/events
http://nicetoclub.com/shows/internacionales
http://www.ticketek.com.ar/musica

