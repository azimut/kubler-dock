### kubler-spin/plex-media-server:20180227

Built: Fri Mar 23 17:53:31 EDT 2018
Image Size: 272MB

#### Installed
Package | USE Flags
--------|----------
dev-lang/python-exec-2.4.5 | ` `
dev-libs/glib-2.52.3 | `-dbus -debug (-fam) -mime (-selinux) -static-libs -systemtap {-test} -utils -xattr`
dev-libs/gobject-introspection-1.52.1 | `-cairo -doctool {-test}`
dev-libs/gobject-introspection-common-1.52.1 | ``
dev-libs/libdaemon-0.14-r2 | `-doc -examples -static-libs`
dev-libs/libpcre-8.41-r1 | `bzip2 cxx recursion-limit (unicode) zlib -jit -libedit -pcre16 -pcre32 -readline -static-libs`
dev-util/pkgconfig-0.29.2 | `hardened -internal-glib`
media-tv/plex-media-server-1.10.1-r1 | ` `
net-dns/avahi-0.7 | `introspection -autoipd -bookmarks -dbus -doc -gdbm -gtk -gtk3 -howl-compat -ipv6 -mdnsresponder-compat -mono -nls -python -qt4 (-selinux) {-test}`
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/util-linux-2.30.2-r1 | `unicode -build -caps -cramfs -fdformat -kill -ncurses -nls -pam -python -readline (-selinux) -slang -static-libs -suid -systemd {-test} -tty-helpers -udev`
sys-libs/libcap-2.24-r2 | `-pam -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/python2-glibc** |
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.22.0 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/python-2.7.14-r1 | `hardened libressl sqlite ssl (threads) (wide-unicode) xml (-berkdb) -build -doc -examples -gdbm -ipv6 -ncurses -readline -tk -wininst`
dev-libs/expat-2.2.5 | `unicode -examples -static-libs`
dev-libs/libffi-3.2.1 | `-debug -pax`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
**FROM kubler-spin/libressl** |
app-misc/ca-certificates-20170717.3.36 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/libressl-2.4.5 | `asm -static-libs`
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
