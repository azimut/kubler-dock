### kubler-spin/dnsmasq:20170423

Built: Tue May 16 21:53:42 ART 2017
Image Size: 36.71 MB

#### Installed
Package | USE Flags
--------|----------
net-dns/bind-tools-9.11.0_p3 | `-doc -gost -gssapi -idn -ipv6 (-libressl) -readline -seccomp -ssl -urandom -xml`
net-dns/dnsmasq-2.76-r1 | `-auth-dns -conntrack -dbus -dhcp -dhcp-tools -dnssec -idn -inotify -ipv6 -lua -nls -script (-selinux) -static -tftp`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.16 | ``
**FROM kubler-spin/busybox** |
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.26.2-r1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
