### kubler-spin/nodejs-glibc:20170326

Built: Mon Apr 10 19:09:01 ART 2017
Image Size: 47.2 MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libuv-1.10.2 | `-static-libs`
net-libs/http-parser-2.6.2 | `-static-libs`
net-libs/nodejs-6.10.0 | `npm snapshot ssl -debug -doc -icu {-test}`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/openssl-glibc** |
app-misc/ca-certificates-20161130.3.30.1 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2k | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r3 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
**FROM gentoobb/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [ ] Headers
- [x] Static Libs
