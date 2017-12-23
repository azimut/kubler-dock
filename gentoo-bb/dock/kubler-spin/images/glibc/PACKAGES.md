### kubler-spin/glibc:20170423

Built: Thu Dec 21 19:33:17 ART 2017
Image Size: 10.6MB

#### Installed
Package | USE Flags
--------|----------
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r9 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017c | `-leaps`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`

#### Purged
- [x] Headers
- [x] Static Libs
