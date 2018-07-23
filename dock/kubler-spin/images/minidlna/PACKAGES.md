### kubler-spin/minidlna:20180227

Built: Mon Jun 18 21:05:14 -03 2018
Image Size: 42.9MB

#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
dev-db/sqlite-3.22.0 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
media-libs/flac-1.3.2-r1 | `cxx (-altivec) -debug -ogg -static-libs`
media-libs/libexif-0.6.21-r1 | `-doc -nls -static-libs`
media-libs/libid3tag-0.15.1b-r4 | `-debug -static-libs`
media-libs/libjpeg-turbo-1.5.1 | `-java -static-libs`
media-libs/libogg-1.3.3 | `-static-libs`
media-libs/libvorbis-1.3.5 | `-static-libs`
media-video/ffmpeg-3.3.6 | `bzip2 encode gpl hardcoded-tables iconv network postproc threads zlib -`
net-misc/minidlna-1.2.1 | `-avahi -netgear -readynas`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/openssl** |
app-misc/ca-certificates-20170717.3.36 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2n | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r10 | `hardened rpc -audit -caps -debug -gd -headers-only (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017c | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
