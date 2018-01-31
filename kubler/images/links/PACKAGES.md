### kubler-spin/links:20170423

Built: Thu May 18 19:55:03 ART 2017
Image Size: 16.53 MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libpthread-stubs-0.3-r1 | `-static-libs`
media-libs/libjpeg-turbo-1.5.0 | `-java -static-libs`
media-libs/libpng-1.6.27 | `-apng (-neon) -static-libs`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
www-client/links-2.14 | ``
x11-libs/libX11-1.6.5 | `-doc -ipv6 -static-libs {-test}`
x11-libs/libXau-1.0.8 | `-static-libs`
x11-libs/libXdmcp-1.1.2-r1 | `-doc -static-libs`
x11-libs/libXext-1.3.3 | `-doc -static-libs`
x11-libs/libxcb-1.12-r2 | `-doc (-selinux) -static-libs {-test} -xkb`
x11-libs/xtrans-1.3.5 | `-doc`
x11-proto/inputproto-2.3.2 | ``
x11-proto/kbproto-1.0.7 | ``
x11-proto/xextproto-7.3.0 | `-doc`
x11-proto/xf86bigfontproto-1.2.0-r1 | ``
x11-proto/xproto-7.0.31 | `-doc`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl-musl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.30.2 | `-cacert -insecure`
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.16 | ``
**FROM kubler-spin/busybox** |
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.26.2-r1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
