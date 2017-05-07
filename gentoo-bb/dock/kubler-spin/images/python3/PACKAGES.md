### kubler-spin/python3:20170326

Built: Sat Apr 22 17:04:18 ART 2017
Image Size: 25.89 MB

#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r7 | `-static -static-libs`
app-arch/xz-utils-5.2.3 | `nls threads -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.17.0 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/python-3.4.5 | `hardened libressl sqlite ssl (threads) xml -build -examples -gdbm -ipv6 -ncurses -readline -tk -wininst`
dev-libs/expat-2.2.0-r1 | `unicode -examples -static-libs`
dev-libs/libffi-3.2.1 | `pax`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.30.1 | `-cacert -insecure`
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM kubler-spin/busybox** |
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.26.2 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
