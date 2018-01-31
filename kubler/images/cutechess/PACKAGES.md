### kubler-spin/cutechess:20170423

Built: Mon Jul 31 03:18:59 ART 2017
Image Size: 143.2 MB

#### Installed
Package | USE Flags
--------|----------
dev-qt/qtconcurrent-5.7.1 | `-debug {-test}`
dev-qt/qtprintsupport-5.7.1 | `-cups -debug -gles2 {-test}`
dev-qt/qtsvg-5.7.1 | `-debug {-test}`
dev-qt/qtwidgets-5.7.1 | `png xcb -debug -gles2 {-test}`
x11-misc/xkeyboard-config-2.20 | ``
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/qt5** |
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-fontconfig-1.1 | ``
app-eselect/eselect-mesa-0.0.10-r1 | ``
app-eselect/eselect-opengl-1.3.1-r4 | ``
dev-libs/double-conversion-2.0.1 | `-static-libs`
dev-libs/expat-2.2.1 | `unicode -examples -static-libs`
dev-libs/glib-2.50.3-r1 | `mime -dbus -debug (-fam) (-selinux) -static-libs (-systemtap) {-test} -utils -xattr`
dev-libs/gobject-introspection-1.50.0 | `-cairo (-doctool) {-test}`
dev-libs/gobject-introspection-common-1.50.0 | ``
dev-libs/libffi-3.2.1 | `pax`
dev-libs/libpcre-8.40-r1 | `cxx pcre16 recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre32 -readline -static-libs`
dev-libs/libpthread-stubs-0.4 | `-static-libs`
dev-libs/libxml2-2.9.4-r1 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/lzo-2.09 | `-examples -static-libs`
dev-qt/qtchooser-0_p20151008 | `{-test}`
dev-qt/qtcore-5.7.1-r3 | `-debug -icu (-systemd) {-test}`
dev-qt/qtgui-5.7.1-r1 | `gif png xcb -accessibility -dbus -debug -egl -eglfs -evdev -gles2 -gtk -ibus -jpeg -libinput {-test} -tslib -tuio -udev`
dev-util/pkgconfig-0.28-r2 | `hardened -internal-glib`
media-fonts/liberation-fonts-2.00.1-r1 | `-`
media-gfx/graphite2-1.3.10 | `-perl {-test}`
media-libs/fontconfig-2.11.1-r2 | `-doc -static-libs`
media-libs/freetype-2.8 | `adobe-cff cleartype`
media-libs/harfbuzz-1.4.6-r2 | `cairo glib graphite introspection truetype -debug -fontconfig -icu -static-libs {-test}`
media-libs/libpng-1.6.29 | `-apng (-neon) -static-libs`
media-libs/mesa-17.0.6 | `classic dri3 egl gallium gbm llvm pax`
sys-apps/coreutils-8.25 | `nls -acl -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla -xattr`
sys-apps/file-5.30 | `zlib -python -static-libs`
sys-apps/gentoo-functions-0.10 | ``
sys-apps/sed-4.2.2 | `nls -acl (-selinux) -static`
sys-apps/util-linux-2.28.2 | `nls unicode -build -caps -cramfs -fdformat -kill -ncurses -pam -python -readline (-selinux) -slang -static-libs -suid (-systemd) {-test} -tty-helpers -udev`
sys-devel/binutils-config-5-r3 | ``
sys-devel/llvm-3.9.1-r1 | `libffi static-analyzer -clang -debug -default-compiler-rt -default-libcxx -doc -gold -libedit (-lldb) -multitarget -ncurses -ocaml -python (-sanitize) {-test} -xml`
sys-libs/binutils-libs-2.28-r1 | `nls -64-bit-bfd -multitarget -static-libs`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
x11-libs/cairo-1.14.8 | `glib svg -`
x11-libs/libICE-1.0.9-r1 | `-doc -ipv6 -static-libs`
x11-libs/libSM-1.2.2-r1 | `uuid -doc -ipv6 -static-libs`
x11-libs/libX11-1.6.5 | `-doc -ipv6 -static-libs {-test}`
x11-libs/libXau-1.0.8 | `-static-libs`
x11-libs/libXdamage-1.1.4-r1 | `-static-libs`
x11-libs/libXdmcp-1.1.2-r1 | `-doc -static-libs`
x11-libs/libXext-1.3.3 | `-doc -static-libs`
x11-libs/libXfixes-5.0.3 | `-static-libs`
x11-libs/libXi-1.7.9 | `-doc -static-libs`
x11-libs/libXrender-0.9.10 | `-static-libs`
x11-libs/libXxf86vm-1.1.4 | `-static-libs`
x11-libs/libdrm-2.4.80 | `-libkms -static-libs -valgrind`
x11-libs/libxcb-1.12-r2 | `xkb -doc (-selinux) -static-libs {-test}`
x11-libs/libxkbcommon-0.7.1 | ``
x11-libs/libxshmfence-1.2 | `-static-libs`
x11-libs/pixman-0.34.0 | `(-altivec) (-iwmmxt) (-loongson2f) (-neon) -static-libs`
x11-libs/xcb-util-0.4.0 | `-doc -static-libs {-test}`
x11-libs/xcb-util-cursor-0.1.3-r1 | `-doc -static-libs {-test}`
x11-libs/xcb-util-image-0.4.0 | `-doc -static-libs {-test}`
x11-libs/xcb-util-keysyms-0.4.0 | `-doc -static-libs {-test}`
x11-libs/xcb-util-renderutil-0.3.9-r1 | `-doc -static-libs {-test}`
x11-libs/xcb-util-wm-0.4.1-r1 | `-doc -static-libs {-test}`
x11-libs/xtrans-1.3.5 | `-doc`
x11-misc/shared-mime-info-1.8 | `{-test}`
x11-proto/damageproto-1.2.1-r1 | ``
x11-proto/fixesproto-5.0-r1 | ``
x11-proto/inputproto-2.3.2 | ``
x11-proto/kbproto-1.0.7 | ``
x11-proto/renderproto-0.11.1-r1 | ``
x11-proto/xcb-proto-1.12-r2 | ` `
x11-proto/xextproto-7.3.0 | `-doc`
x11-proto/xf86bigfontproto-1.2.0-r1 | ``
x11-proto/xf86vidmodeproto-2.3.1-r1 | ``
x11-proto/xproto-7.0.31 | `-doc`
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
