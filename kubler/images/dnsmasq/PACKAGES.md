### kubler-spin/dnsmasq:20170423

Built: Sat Dec 23 03:10:23 ART 2017
Image Size: 33.2MB

#### Installed
Package | USE Flags
--------|----------
net-dns/bind-tools-9.11.1_p3 | `-doc -gost -gssapi -idn -ipv6 -libressl -readline -seccomp -ssl -urandom -xml`
net-dns/dnsmasq-2.78 | `id -auth-dns -conntrack -dbus -dhcp -dhcp-tools -dnssec -idn -inotify -ipv6 (-libidn2) -lua -nls -script (-selinux) -static -tftp`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.18 | ``
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.27.2 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
