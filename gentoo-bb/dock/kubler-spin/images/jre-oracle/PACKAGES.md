### kubler-spin/jre-oracle:20170423

Built: Sat May 13 02:18:24 ART 2017
Image Size: 143.9 MB

#### Installed
Package | USE Flags
--------|----------
dev-java/java-config-2.2.0-r3 | `{-test}`
dev-java/oracle-jre-bin-1.8.0.131 | `headless-awt jce -alsa -commercial -cups -fontconfig -javafx -nsplugin (-selinux)`
sys-apps/baselayout-java-0.1.0 | ``
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
