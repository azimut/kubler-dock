### gentoobb-arm/libressl:20170127

Built: Sun Feb 12 22:18:12 ART 2017
Image Size: 4.854 MB
#### Installed
Package | USE Flags
--------|----------
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.28.1 | `-cacert -insecure`
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobb-arm/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM gentoobb/busybox** |
**FROM gentoobb-arm/busybox** |
sys-apps/busybox-1.26.0 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
