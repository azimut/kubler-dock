### kubler-spin/jre-oracle:20170423

Built: Mon May 15 21:13:26 ART 2017
Image Size: 143.5 MB

#### Installed
Package | USE Flags
--------|----------
dev-java/oracle-jre-bin-1.8.0.131 | `headless-awt jce -alsa -commercial -cups -fontconfig -javafx -nsplugin (-selinux)`
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
