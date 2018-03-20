### kubler-spin/dnscrypt-proxy2:20180227

Built: Tue Mar 13 20:29:52 EDT 2018
Image Size: 17.9MB

#### Installed
Package | USE Flags
--------|----------
*manual install*: dnscrypt-proxy-2.0.6 | https://github.com/jedisct1/dnscrypt-proxy
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r10 | `hardened rpc -audit -caps -debug -gd -headers-only (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017c | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
