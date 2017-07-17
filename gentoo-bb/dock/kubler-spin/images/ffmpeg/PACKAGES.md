### kubler-spin/ffmpeg:20170423

Built: Sat Jun 24 14:20:40 ART 2017
Image Size: 46.01 MB

#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r7 | `-static -static-libs`
dev-libs/glib-2.50.3-r1 | `-dbus -debug (-fam) -mime (-selinux) -static-libs (-systemtap) {-test} -utils -xattr`
dev-libs/json-c-0.12 | `-doc -static-libs`
dev-libs/libffi-3.2.1 | `pax`
dev-libs/libltdl-2.4.6 | `-static-libs`
dev-libs/libpcre-8.40-r1 | `cxx recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre16 -pcre32 -readline -static-libs`
dev-libs/libpthread-stubs-0.3-r1 | `-static-libs`
media-libs/flac-1.3.2-r1 | `cxx (-altivec) -debug -ogg -static-libs`
media-libs/libogg-1.3.2 | `-static-libs`
media-libs/libsndfile-1.0.28 | `-alsa -minimal -sqlite -static-libs {-test}`
media-libs/libvorbis-1.3.5 | `-static-libs`
media-libs/speex-1.2_rc1-r2 | `-ogg -static-libs`
media-sound/pulseaudio-10.0 | `caps glib libressl ssl -`
media-video/ffmpeg-3.2.4 | ``
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-apps/util-linux-2.28.2 | `nls unicode -build -caps -cramfs -fdformat -kill -ncurses -pam -python -readline (-selinux) -slang -static-libs -suid (-systemd) {-test} -tty-helpers -udev`
sys-libs/libcap-2.24-r2 | `-pam -static-libs`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
x11-libs/libX11-1.6.5 | `-doc -ipv6 -static-libs {-test}`
x11-libs/libXau-1.0.8 | `-static-libs`
x11-libs/libXdmcp-1.1.2-r1 | `-doc -static-libs`
x11-libs/libXext-1.3.3 | `-doc -static-libs`
x11-libs/libXfixes-5.0.3 | `-static-libs`
x11-libs/libXv-1.0.11 | `-static-libs`
x11-libs/libxcb-1.12-r2 | `-doc (-selinux) -static-libs {-test} -xkb`
x11-libs/xtrans-1.3.5 | `-doc`
x11-proto/fixesproto-5.0-r1 | ``
x11-proto/inputproto-2.3.2 | ``
x11-proto/kbproto-1.0.7 | ``
x11-proto/videoproto-2.3.3 | ``
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
