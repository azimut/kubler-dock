### kubler-spin/flexget:20170423

Built: Tue Dec 26 00:08:43 ART 2017
Image Size: 57.6MB

#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-arch/xz-utils-5.2.3 | `extra-filters threads -nls -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.20.1-r1 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/python-3.4.5-r1 | `hardened libressl sqlite ssl (threads) xml -build -examples -gdbm -ipv6 -ncurses -readline -tk -wininst`
dev-libs/expat-2.2.1 | `unicode -examples -static-libs`
dev-libs/libffi-3.2.1 | `-debug -pax`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl-musl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20170717.3.34.1 | `-cacert -insecure`
dev-libs/libressl-2.6.0 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.18 | ``
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.27.2 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
