### kubler-spin/dnsmasq:20170326

Built: Mon Apr  3 22:49:52 ART 2017
Image Size: 2.125 MB

#### Installed
Package | USE Flags
--------|----------
net-dns/dnsmasq-2.76 | `-auth-dns -conntrack -dbus -dhcp -dhcp-tools -dnssec -idn -inotify -ipv6 -lua -nls -script (-selinux) -static -tftp`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM kubler-spin/busybox** |
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.26.2 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
