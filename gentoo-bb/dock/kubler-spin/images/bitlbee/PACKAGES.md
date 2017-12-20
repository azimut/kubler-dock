### kubler-spin/bitlbee:20170423

Built: Wed Oct 18 01:25:57 ART 2017
Image Size: 26.3MB

#### Installed
Package | USE Flags
--------|----------
dev-db/sqlite-3.19.3 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-libs/glib-2.50.3-r1 | `-dbus -debug (-fam) -mime (-selinux) -static-libs -systemtap {-test} -utils -xattr`
dev-libs/json-glib-1.2.8 | `-debug -introspection`
dev-libs/libffi-3.2.1 | `pax`
dev-libs/libpcre-8.41 | `cxx recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre16 -pcre32 -readline -static-libs`
dev-libs/libxml2-2.9.4-r3 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/nspr-4.13.1 | `-debug`
dev-libs/nss-3.29.5 | `nss-pem -cacert -utils`
net-im/bitlbee-3.5.1 | `libressl plugins purple xmpp -debug -gnutls -ipv6 -libevent -msn -nss -oscar -otr (-selinux) {-test} -twitter -xinetd`
net-im/pidgin-2.12.0 | `(-aqua) -dbus -debug -doc -eds -gadu -gnutls -groupwise -gstreamer -gtk -idn -meanwhile -ncurses -networkmanager -nls -perl -pie -prediction -python -sasl -silc -spell -tcl -tk -xscreensaver -zephyr -zeroconf`
sys-apps/util-linux-2.28.2 | `unicode -build -caps -cramfs -fdformat -kill -ncurses -nls -pam -python -readline (-selinux) -slang -static-libs -suid (-systemd) {-test} -tty-helpers -udev`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
x11-plugins/pidgin-skypeweb-9999 | ``
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl-musl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.32 | `-cacert -insecure`
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.16 | ``
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.27.2 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
