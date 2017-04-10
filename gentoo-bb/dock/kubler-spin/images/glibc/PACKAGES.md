### kubler-spin/glibc:20170326

Built: Thu Apr  6 23:35:45 ART 2017
Image Size: 18.84 MB

#### Installed
Package | USE Flags
--------|----------
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r3 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobb/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`

#### Purged
- [x] Headers
- [x] Static Libs
