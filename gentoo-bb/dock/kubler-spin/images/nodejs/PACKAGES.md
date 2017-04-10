### kubler-spin/nodejs:20170326

Built: Mon Apr 10 18:54:54 ART 2017
Image Size: 38.68 MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libuv-1.10.2 | `-static-libs`
net-libs/http-parser-2.6.2 | `-static-libs`
net-libs/nodejs-6.10.2 | `npm snapshot ssl -debug -doc -icu {-test}`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/openssl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.30.1 | `-cacert -insecure`
dev-libs/openssl-1.0.2k | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM kubler-spin/busybox** |
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.26.2 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [ ] Headers
- [x] Static Libs
