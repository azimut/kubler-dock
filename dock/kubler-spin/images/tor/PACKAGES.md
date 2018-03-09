### kubler-spin/tor:20180127

Built: mié ene 31 20:45:11 -03 2018
Image Size: 23.2MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libevent-2.1.8 | `libressl ssl threads -debug -static-libs {-test}`
net-vpn/tor-0.3.3.1_alpha | `libressl seccomp -lzma -scrypt (-selinux) -systemd {-test} -tor-hardening -web -zstd`
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-libs/libcap-2.24-r2 | `-pam -static-libs`
sys-libs/libseccomp-2.3.3 | `-static-libs`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl** |
app-misc/ca-certificates-20170717.3.35 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/libressl-2.4.5 | `asm -static-libs`
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
