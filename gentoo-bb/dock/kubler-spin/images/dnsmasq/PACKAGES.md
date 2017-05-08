### kubler-spin/dnsmasq:20170423

Built: Sun May  7 07:53:57 ART 2017
Image Size: 2.087 MB

#### Installed
Package | USE Flags
--------|----------
net-dns/dnsmasq-2.76-r1 | `-auth-dns -conntrack -dbus -dhcp -dhcp-tools -dnssec -idn -inotify -ipv6 -lua -nls -script (-selinux) -static -tftp`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.16 | ``
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
