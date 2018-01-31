### kubler-spin/headphones:20170423

Built: Sun Jul 16 14:52:43 ART 2017
Image Size: 32.27 MB

#### Installed
Package | USE Flags
--------|----------
sys-apps/baselayout-2.3 | `-build`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/python2** |
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.17.0 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/python-2.7.12 | `hardened libressl sqlite ssl (threads) (wide-unicode) xml (-berkdb) -build -doc -examples -gdbm -ipv6 -ncurses -readline -tk -wininst`
dev-libs/expat-2.2.1 | `unicode -examples -static-libs`
dev-libs/libffi-3.2.1 | `pax`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
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
