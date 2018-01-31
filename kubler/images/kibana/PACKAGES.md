### kubler-spin/kibana:20170423

Built: Mon Jun 26 20:50:07 ART 2017
Image Size: 220.6 MB

#### Installed
Package | USE Flags
--------|----------
www-apps/kibana-bin-5.4.1 | ``
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r3 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
