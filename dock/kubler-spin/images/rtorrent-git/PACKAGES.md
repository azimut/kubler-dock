### kubler-spin/rtorrent-git:20180227

Built: Thu Mar 29 17:31:53 EDT 2018
Image Size: 26.6MB

#### Installed
Package | USE Flags
--------|----------
app-misc/screen-4.4.0 | `-debug -multiuser -nethack -pam (-selinux)`
dev-libs/libsigc++-2.99.10 | `-doc -static-libs {-test}`
dev-libs/libxml2-2.9.7 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/xmlrpc-c-1.43.9999 | `cgi curl cxx libxml2 threads -abyss {-test} -tools`
net-libs/libtorrent-9999 | `libressl ssl -debug {-test}`
net-misc/curl-7.58.0 | `ssl threads -adns -brotli -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
net-p2p/rtorrent-9999 | `xmlrpc -daemon -debug -ipv6 (-selinux) {-test}`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-7.0_p3 | `-static-libs -utils`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl** |
app-misc/ca-certificates-20170717.3.36 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r10 | `hardened rpc -audit -caps -debug -gd -headers-only (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017c | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
