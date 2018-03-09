### kubler-spin/dnscrypt-proxy:20170423

Built: Sat Dec 23 02:34:06 ART 2017
Image Size: 6.43MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libltdl-2.4.6 | `-static-libs`
dev-libs/libsodium-1.0.15 | `asm minimal urandom -static-libs`
net-dns/dnscrypt-proxy-1.9.5-r1 | `hardened libressl plugins ssl (-systemd)`
net-libs/ldns-1.7.0-r2 | `dane ecdsa libressl -doc -gost -python -static-libs -vim-syntax`
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
