### kubler-spin/libressl-musl:20180127

Built: mar ene 30 17:49:56 -03 2018
Image Size: 5.5MB

#### Installed
Package | USE Flags
--------|----------
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20170717.3.35 | `-cacert -insecure`
dev-libs/libressl-2.6.0 | `asm -static-libs`
sys-apps/debianutils-4.8.3 | `-static`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.18 | `-headers-only`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
