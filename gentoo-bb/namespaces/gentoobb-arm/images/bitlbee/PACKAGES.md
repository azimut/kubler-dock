### gentoobb-arm/bitlbee:20170127

Built: Mon Feb 13 02:19:16 ART 2017
Image Size: 21.29 MB
#### Installed
Package | USE Flags
--------|----------
dev-db/sqlite-3.13.0 | `readline -debug -doc -icu -secure-delete -static-libs -tcl {-test} -tools`
dev-libs/glib-2.48.2 | `-dbus -debug (-fam) -mime (-selinux) -static-libs (-systemtap) {-test} -utils -xattr`
dev-libs/json-glib-1.2.2 | `-debug -introspection`
dev-libs/libffi-3.2.1 | `pax`
dev-libs/libpcre-8.39 | `cxx readline recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre16 -pcre32 -static-libs`
dev-libs/libxml2-2.9.4-r1 | `readline -debug -examples -icu -ipv6 -lzma -python -static-libs {-test}`
dev-libs/nspr-4.13.1 | `-debug`
dev-libs/nss-3.28.1 | `nss-pem -cacert -utils`
net-im/bitlbee-3.5.1 | `libressl plugins purple -debug -gnutls -ipv6 -libevent -msn -nss -oscar -otr (-selinux) {-test} -twitter -xinetd -xmpp`
net-im/pidgin-2.11.0-r1 | `nls (-aqua) -dbus -debug -doc -eds -gadu -gnutls -groupwise -gstreamer -gtk -idn -meanwhile -mxit -ncurses -networkmanager -perl -pie -prediction -python -sasl -silc -spell -tcl -tk -xscreensaver -zephyr -zeroconf`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
x11-plugins/pidgin-skypeweb-1.2 | ``
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobb-arm/libressl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.28.1 | `-cacert -insecure`
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM gentoobb-arm/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM gentoobb/busybox** |
**FROM gentoobb-arm/busybox** |
sys-apps/busybox-1.26.0 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
