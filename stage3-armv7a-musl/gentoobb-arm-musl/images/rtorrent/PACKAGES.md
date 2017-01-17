### gentoobb-arm-musl/rtorrent:20161207
Built: Sun Jan 15 04:59:57 ART 2017

Image Size: 14.67 MB
#### Installed
Package | USE Flags
--------|----------
dev-libs/libsigc++-2.8.0 | `-doc -static-libs {-test}`
net-libs/libtorrent-0.13.6 | `ssl -debug -ipv6 -libressl {-test}`
net-misc/curl-7.52.1-r1 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
net-p2p/rtorrent-0.9.6 | `-daemon -debug -ipv6 (-selinux) {-test} -xmlrpc`
sys-libs/ncurses-6.0-r1 | `cxx threads unicode (-ada) -debug -doc -gpm -minimal -profile -static-libs {-test} -tinfo -trace`
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobb-arm-musl/openssl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20151214.3.21 | `cacert`
dev-libs/openssl-1.0.2j | `asm sslv3 tls-heartbeat zlib -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -static-libs {-test} -vanilla`
sys-apps/debianutils-4.7 | `-static`
sys-libs/zlib-1.2.8-r1 | `-minizip -static-libs`
**FROM gentoobb-arm-musl/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM gentoobb/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
