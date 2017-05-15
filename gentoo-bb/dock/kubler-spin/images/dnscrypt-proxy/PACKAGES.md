### kubler-spin/dnscrypt-proxy:20170423

Built: Mon May 15 05:06:18 ART 2017
Image Size: 6.849 MB




#### Installed
Package | USE Flags
--------|----------
dev-libs/libltdl-2.4.6 | `-static-libs`
dev-libs/libsodium-1.0.11 | `asm minimal urandom -static-libs`
net-dns/dnscrypt-proxy-1.9.4 | `hardened libressl plugins ssl (-systemd)`
net-libs/ldns-1.7.0 | `dane ecdsa libressl ssl -doc -gost -python -static-libs -vim-syntax`
#### Inherited
Package | USE Flags
--------|----------
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
