### kubler-spin/newsbeuter:20170423

Built: Sun May 21 05:03:19 ART 2017
Image Size: 19.57 MB




#### Installed
Package | USE Flags
--------|----------
dev-db/sqlite-3.17.0 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-libs/json-c-0.12 | `-doc -static-libs`
dev-libs/libxml2-2.9.4-r1 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/stfl-0.23 | `-examples -perl -python -ruby -static-libs`
net-misc/curl-7.53.0 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
net-news/newsbeuter-9999 | `{-test}`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/lynx** |
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
www-client/lynx-2.8.9_pre11 | `libressl ssl unicode -bzip2 -cjk -gnutls -idn -ipv6 -nls`
**FROM kubler-spin/libressl-musl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.30.2 | `-cacert -insecure`
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.16 | ``
**FROM kubler-spin/busybox** |
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.26.2-r1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
