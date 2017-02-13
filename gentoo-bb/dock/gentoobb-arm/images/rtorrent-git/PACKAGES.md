### gentoobb-arm-musl-libressl/rtorrent-git:20161207

Built: Sun Jan 22 08:15:40 ART 2017
Image Size: 13.47 MB
#### Installed
Package | USE Flags
--------|----------
dev-libs/libsigc++-2.8.0 | `-doc -static-libs {-test}`
dev-libs/libxml2-2.9.4-r1 | `readline -debug -examples -icu -ipv6 -lzma -python -static-libs {-test}`
dev-libs/xmlrpc-c-1.39.11-r1 | `cgi curl cxx libxml2 threads -abyss {-test} -tools`
net-libs/libtorrent-9999 | `libressl ssl -debug {-test}`
net-misc/curl-7.52.1-r1 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
net-p2p/rtorrent-9999 | `xmlrpc -daemon -debug -ipv6 (-selinux) {-test}`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobb-arm-musl-libressl/libressl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20151214.3.21 | `cacert`
dev-libs/libressl-2.5.0 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM gentoobb-arm-musl-libressl/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM gentoobb/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
