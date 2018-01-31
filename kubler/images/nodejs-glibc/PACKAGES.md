### kubler-spin/nodejs-glibc:20180127

Built: mié ene 31 01:18:25 -03 2018
Image Size: 46.2MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libuv-1.19.1 | `-static-libs`
net-libs/http-parser-2.7.1 | `-static-libs`
net-libs/nodejs-6.12.3 | `npm snapshot ssl -debug -doc -icu -inspector {-test}`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/openssl** |
app-misc/ca-certificates-20170717.3.35 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2n | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r9 | `hardened rpc -audit -caps -debug -gd -headers-only (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017c | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
