### gentoobb-arm/rtorrent:20161129
Built: Tue Jan 10 20:03:52 ART 2017

Image Size: 20.14 MB
#### Installed
Package | USE Flags
--------|----------
dev-libs/libsigc++-2.8.0 | `-doc -static-libs {-test}`
net-libs/libtorrent-0.13.6 | `ssl -debug -ipv6 -libressl {-test}`
net-misc/curl-7.51.0 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink (-rtmp) -samba -ssh -static-libs {-test}`
net-p2p/rtorrent-0.9.6 | `-daemon -debug -ipv6 (-selinux) {-test} -xmlrpc`
sys-libs/ncurses-6.0-r1 | `cxx threads unicode (-ada) -debug -doc -gpm -minimal -profile -static-libs {-test} -tinfo -trace`
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobb-arm/openssl** |
app-misc/ca-certificates-20151214.3.21 | `cacert`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2j | `asm sslv3 tls-heartbeat zlib -bindist -gmp -kerberos -rfc3779 (-sctp) -sslv2 -static-libs {-test} -vanilla`
sys-apps/debianutils-4.7 | `-static`
sys-libs/zlib-1.2.8-r1 | `-minizip -static-libs`
**FROM gentoobb-arm/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.22-r4 | `-debug -gd (-hardened) (-multilib) -nscd -profile (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2016h | `nls -leaps`
**FROM gentoobb/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
