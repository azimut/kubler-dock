### kubler-spin/dnscrypt-proxy2:20180127

Built: mar ene 30 23:21:54 -03 2018
Image Size: 17.7MB

#### Installed
Package | USE Flags
--------|----------
*manual install*: dnscrypt-proxy-2.0.0beta12 | https://github.com/jedisct1/dnscrypt-proxy
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r9 | `hardened rpc -audit -caps -debug -gd -headers-only (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017c | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
