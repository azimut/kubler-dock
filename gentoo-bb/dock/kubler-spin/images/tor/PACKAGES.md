### kubler-spin/tor:20170326

Built: Sun Apr  9 05:22:11 ART 2017
Image Size: 15.57 MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libevent-2.1.8 | `libressl ssl threads -debug -static-libs {-test}`
net-vpn/tor-0.2.9.10 | `libressl -scrypt -seccomp (-selinux) (-systemd) {-test} -tor-hardening -web`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-libs/libcap-2.24-r2 | `-pam -static-libs`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.29.3 | `-cacert -insecure`
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
