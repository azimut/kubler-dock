### kubler-spin/pychess:20170423

Built: Mon Jul 24 01:35:14 ART 2017
Image Size: 124.6 MB


#### Installed
Package | USE Flags
--------|----------
app-accessibility/at-spi2-atk-2.22.0 | `{-test}`
app-accessibility/at-spi2-core-2.22.1 | `introspection -`
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-fontconfig-1.1 | ``
dev-lang/python-exec-2.4.4 | ` `
dev-libs/atk-2.22.0 | `introspection nls {-test}`
dev-libs/glib-2.50.3-r1 | `-dbus -debug (-fam) -mime (-selinux) -static-libs (-systemtap) {-test} -utils -xattr`
dev-libs/gobject-introspection-1.50.0 | `-cairo (-doctool) {-test}`
dev-libs/gobject-introspection-common-1.50.0 | ``
dev-libs/libcroco-0.6.12-r1 | `{-test}`
dev-libs/libpcre-8.40-r1 | `cxx recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre16 -pcre32 -readline -static-libs`
dev-libs/libpthread-stubs-0.4 | `-static-libs`
dev-libs/libxml2-2.9.4-r1 | `python -debug -examples -icu -ipv6 -lzma -readline -static-libs {-test}`
dev-libs/lzo-2.09 | `-examples -static-libs`
dev-python/pycairo-1.10.0-r5 | `svg -doc -examples {-test} -xcb`
dev-python/pygobject-3.22.0 | `cairo threads -examples {-test}`
dev-util/gtk-update-icon-cache-3.22.2 | ``
dev-util/pkgconfig-0.28-r2 | `hardened -internal-glib`
games-board/pychess-0.12.4 | `-gstreamer`
gnome-base/librsvg-2.40.17 | `introspection -tools -vala`
media-fonts/liberation-fonts-2.00.1-r1 | `-`
media-gfx/graphite2-1.3.10 | `-perl {-test}`
media-libs/fontconfig-2.11.1-r2 | `-doc -static-libs`
media-libs/freetype-2.8 | `adobe-cff bindist cleartype`
media-libs/harfbuzz-1.4.6-r2 | `cairo glib graphite introspection truetype -debug -fontconfig -icu -static-libs {-test}`
media-libs/libepoxy-1.4.2 | ``
media-libs/libpng-1.6.29 | `-apng (-neon) -static-libs`
sys-apps/coreutils-8.25 | `nls -acl -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla -xattr`
sys-apps/dbus-1.10.18 | `-`
sys-apps/file-5.30 | `zlib -python -static-libs`
sys-apps/gentoo-functions-0.10 | ``
sys-apps/sed-4.2.2 | `nls -acl (-selinux) -static`
sys-apps/util-linux-2.28.2 | `nls unicode -build -caps -cramfs -fdformat -kill -ncurses -pam -python -readline (-selinux) -slang -static-libs -suid (-systemd) {-test} -tty-helpers -udev`
sys-devel/binutils-config-5-r3 | ``
sys-libs/binutils-libs-2.28-r1 | `nls -64-bit-bfd -multitarget -static-libs`
sys-libs/ncurses-6.0-r1 | `cxx threads unicode (-ada) -debug -doc -gpm -minimal -profile -static-libs {-test} -tinfo -trace`
x11-libs/cairo-1.14.8 | ``
x11-libs/gdk-pixbuf-2.36.6 | `introspection -`
x11-libs/gtk+-3.22.16 | ``
x11-libs/gtksourceview-3.22.2 | `introspection -glade {-test} -vala`
x11-libs/libICE-1.0.9-r1 | `-doc -ipv6 -static-libs`
x11-libs/libSM-1.2.2-r1 | `uuid -doc -ipv6 -static-libs`
x11-libs/libX11-1.6.5 | `-doc -ipv6 -static-libs {-test}`
x11-libs/libXau-1.0.8 | `-static-libs`
x11-libs/libXcomposite-0.4.4-r1 | `-doc -static-libs`
x11-libs/libXcursor-1.1.14 | `-static-libs`
x11-libs/libXdamage-1.1.4-r1 | `-static-libs`
x11-libs/libXdmcp-1.1.2-r1 | `-doc -static-libs`
x11-libs/libXext-1.3.3 | `-doc -static-libs`
x11-libs/libXfixes-5.0.3 | `-static-libs`
x11-libs/libXi-1.7.9 | `-doc -static-libs`
x11-libs/libXrandr-1.5.1 | `-static-libs`
x11-libs/libXrender-0.9.10 | `-static-libs`
x11-libs/libXtst-1.2.3 | `-doc -static-libs`
x11-libs/libxcb-1.12-r2 | `-doc (-selinux) -static-libs {-test} -xkb`
x11-libs/pango-1.40.6 | `introspection -`
x11-libs/pixman-0.34.0 | `(-altivec) (-iwmmxt) (-loongson2f) (-neon) -static-libs`
x11-libs/xtrans-1.3.5 | `-doc`
x11-misc/shared-mime-info-1.8 | `{-test}`
x11-proto/compositeproto-0.4.2-r1 | ``
x11-proto/damageproto-1.2.1-r1 | ``
x11-proto/fixesproto-5.0-r1 | ``
x11-proto/inputproto-2.3.2 | ``
x11-proto/kbproto-1.0.7 | ``
x11-proto/randrproto-1.5.0 | ``
x11-proto/recordproto-1.14.2-r1 | `-doc`
x11-proto/renderproto-0.11.1-r1 | ``
x11-proto/xextproto-7.3.0 | `-doc`
x11-proto/xf86bigfontproto-1.2.0-r1 | ``
x11-proto/xproto-7.0.31 | `-doc`
x11-themes/adwaita-icon-theme-3.22.0-r2 | `-branding`
x11-themes/hicolor-icon-theme-0.15 | ``
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/python2** |
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.17.0 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/python-2.7.12 | `hardened libressl sqlite ssl (threads) (wide-unicode) xml (-berkdb) -build -doc -examples -gdbm -ipv6 -ncurses -readline -tk -wininst`
dev-libs/expat-2.2.1 | `unicode -examples -static-libs`
dev-libs/libffi-3.2.1 | `pax`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
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
