### kubler-spin/bitlbee:20180227

Built: Mon May 21 21:44:22 -03 2018
Image Size: 34.8MB

#### Installed
Package | USE Flags
--------|----------
app-text/discount-2.1.8a-r1 | `-minimal`
dev-db/sqlite-3.22.0 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-libs/glib-2.52.3 | `-dbus -debug (-fam) -mime (-selinux) -static-libs -systemtap {-test} -utils -xattr`
dev-libs/json-glib-1.2.8 | `-debug -introspection`
dev-libs/libffi-3.2.1 | `-debug -pax`
dev-libs/libpcre-8.41-r1 | `cxx recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre16 -pcre32 -readline -static-libs`
dev-libs/libxml2-2.9.7 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/nspr-4.13.1 | `-debug`
dev-libs/nss-3.29.5 | `nss-pem -cacert -utils`
dev-libs/protobuf-3.5.1.1 | `zlib -emacs -examples -static-libs {-test}`
dev-libs/protobuf-c-1.3.0-r1 | `-static-libs {-test}`
net-im/bitlbee-3.5.1 | `libressl plugins purple twitter -debug -gnutls -ipv6 -libevent -msn -nss -oscar -otr (-selinux) {-test} -xinetd -xmpp`
net-im/pidgin-2.12.0 | `(pie) (-aqua) -dbus -debug -doc -eds -gadu -gnutls -groupwise -gstreamer -gtk -idn -meanwhile -ncurses -networkmanager -nls -perl -prediction -python -sasl -silc -spell -tcl -tk -xscreensaver -zephyr -zeroconf`
sys-apps/util-linux-2.30.2-r1 | `static-libs unicode -build -caps -cramfs -fdformat -kill -ncurses -nls -pam -python -readline (-selinux) -slang -suid (-systemd) {-test} -tty-helpers -udev`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
x11-plugins/purple-hangouts-0_p20170714 | ``
x11-plugins/purple-rocketchat-0_p20170805 | ``
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl-musl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20170717.3.36 | `-cacert -insecure`
dev-libs/libressl-2.6.0 | `asm -static-libs`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.19 | `-headers-only`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
