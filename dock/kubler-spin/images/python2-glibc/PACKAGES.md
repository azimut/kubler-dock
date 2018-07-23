### kubler-spin/python2-glibc:20180227

Built: Fri Jun 22 21:57:18 -03 2018
Image Size: 30.4MB

#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r9 | `-static -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.23.1 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/python-2.7.14-r1 | `hardened libressl sqlite ssl (threads) (wide-unicode) xml (-berkdb) -build -doc -examples -gdbm -ipv6 -ncurses -readline -tk -wininst`
dev-libs/expat-2.2.5 | `unicode -examples -static-libs`
dev-libs/libffi-3.2.1 | `-debug -pax`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl** |
app-misc/ca-certificates-20180409.3.37 | `-cacert`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/libressl-2.6.5 | `asm -static-libs {-test}`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.26-r7 | `hardened -audit -caps -debug -doc -gd -headers-only (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2018d | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
