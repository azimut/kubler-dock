### kubler-spin/firefox-bin:20170423

Built: Sat Nov 18 20:59:27 ART 2017
Image Size: 392MB

#### Installed
Package | USE Flags
--------|----------
app-accessibility/at-spi2-atk-2.22.0 | `{-test}`
app-accessibility/at-spi2-core-2.22.1 | `introspection -`
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-eselect/eselect-fontconfig-1.1 | ``
app-eselect/eselect-mesa-0.0.10-r1 | ``
app-eselect/eselect-opengl-1.3.1-r4 | ``
app-shells/bash-4.3_p48-r1 | `(readline) -afs -bashlogger -examples -mem-scramble -net -nls -plugins`
dev-libs/atk-2.22.0 | `introspection -nls {-test}`
dev-libs/dbus-glib-0.108 | `-debug -static-libs {-test}`
dev-libs/expat-2.2.1 | `unicode -examples -static-libs`
dev-libs/glib-2.50.3-r1 | `-dbus -debug (-fam) -mime (-selinux) -static-libs -systemtap {-test} -utils -xattr`
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/gobject-introspection-1.50.0 | `-cairo -doctool {-test}`
dev-libs/gobject-introspection-common-1.50.0 | ``
dev-libs/libbsd-0.8.6 | `-static-libs`
dev-libs/libcroco-0.6.12-r1 | `{-test}`
dev-libs/libevdev-1.5.7 | `-static-libs`
dev-libs/libffi-3.2.1 | `-debug -pax`
dev-libs/libinput-1.7.3 | `{-test}`
dev-libs/libltdl-2.4.6 | `-static-libs`
dev-libs/libpcre-8.41 | `bzip2 cxx recursion-limit (unicode) zlib -jit -libedit -pcre16 -pcre32 -readline -static-libs`
dev-libs/libpthread-stubs-0.4 | `-static-libs`
dev-libs/libxml2-2.9.4-r3 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/lzo-2.09 | `-examples -static-libs`
dev-libs/nettle-3.3-r2 | `gmp -doc (-neon) -static-libs {-test}`
dev-util/gtk-update-icon-cache-3.22.2 | ``
dev-util/pkgconfig-0.29.2 | `hardened -internal-glib`
gnome-base/gsettings-desktop-schemas-3.22.0 | `introspection`
gnome-base/librsvg-2.40.18 | `introspection -tools -vala`
media-fonts/liberation-fonts-2.00.1-r1 | `-`
media-gfx/graphite2-1.3.10 | `-perl {-test}`
media-libs/flac-1.3.2-r1 | `cxx (-altivec) -debug -ogg -static-libs`
media-libs/fontconfig-2.12.4 | `-doc -static-libs`
media-libs/freetype-2.8 | `adobe-cff bzip2 cleartype`
media-libs/harfbuzz-1.4.6-r2 | `cairo glib graphite introspection truetype -debug -fontconfig -icu -static-libs {-test}`
media-libs/libepoxy-1.4.2 | ``
media-libs/libogg-1.3.2 | `-static-libs`
media-libs/libpng-1.6.29 | `-apng (-neon) -static-libs`
media-libs/libsndfile-1.0.28-r1 | `-alsa -minimal -sqlite -static-libs {-test}`
media-libs/libvorbis-1.3.5 | `-static-libs`
media-libs/mesa-13.0.5 | `classic dri3 egl gallium gbm libressl llvm nettle nptl -bindist -d3d9 -debug -gcrypt -gles1 -gles2 -opencl -openmax -openssl -osmesa -pax`
media-libs/speex-1.2_rc1-r2 | `-ogg -static-libs`
media-sound/pulseaudio-10.0 | `caps glib libressl ssl -`
media-video/ffmpeg-3.3.4 | `bzip2 gpl hardcoded-tables iconv libressl postproc pulseaudio threads zlib -`
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/coreutils-8.26 | `(xattr) -acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static -vanilla`
sys-apps/dbus-1.10.18 | `-`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/hwids-20170328 | `net pci udev usb`
sys-apps/kmod-23 | `tools zlib -debug -doc -lzma -python -static-libs`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-apps/util-linux-2.30.2 | `udev unicode -build -caps -cramfs -fdformat -kill -ncurses -nls -pam -python -readline (-selinux) -slang -static-libs -suid -systemd {-test} -tty-helpers`
sys-devel/binutils-config-5-r3 | ``
sys-devel/llvm-3.9.1-r1 | `libffi sanitize static-analyzer -clang -debug -default-compiler-rt -default-libcxx -doc -gold -libedit (-lldb) -multitarget -ncurses -ocaml -python {-test} -xml`
sys-fs/eudev-3.1.5 | `hwdb kmod -introspection -rule-generator (-selinux) -static-libs {-test}`
sys-fs/udev-init-scripts-32 | ``
sys-libs/binutils-libs-2.28.1 | `-64-bit-bfd -multitarget -nls -static-libs`
sys-libs/libcap-2.24-r2 | `-pam -static-libs`
sys-libs/mtdev-1.1.5 | `-static-libs`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
www-client/firefox-bin-56.0 | `ffmpeg pulseaudio (-selinux) -startup-notification`
x11-apps/iceauth-1.0.7 | ``
x11-apps/mesa-progs-8.3.0 | `-egl -gles2`
x11-apps/rgb-1.0.6 | ``
x11-apps/xauth-1.0.10 | `-ipv6 {-test}`
x11-apps/xinit-1.3.4-r3 | `minimal -systemd`
x11-apps/xkbcomp-1.4.0 | ``
x11-apps/xrdb-1.1.0 | ``
x11-base/xorg-drivers-1.19 | ` `
x11-base/xorg-server-1.19.5 | `glamor libressl suid xorg -debug -dmx -doc -ipv6 -kdrive -minimal (-selinux) -static-libs -systemd -tslib -udev -unwind -wayland -xcsecurity -xephyr -xnest -xvfb`
x11-drivers/xf86-input-keyboard-1.9.0 | ``
x11-drivers/xf86-input-libinput-0.25.1 | ``
x11-drivers/xf86-input-mouse-1.9.2 | ``
x11-drivers/xf86-video-intel-2.99.917_p20170313 | `dri sna udev -debug -dri3 -tools -uxa -xvmc`
x11-libs/cairo-1.14.8 | ``
x11-libs/gdk-pixbuf-2.36.9 | `introspection -`
x11-libs/gtk+-2.24.31-r1 | `introspection (-aqua) -cups -examples {-test} -vim-syntax -xinerama`
x11-libs/gtk+-3.22.16 | ``
x11-libs/libdrm-2.4.80 | `-libkms -static-libs -valgrind`
x11-libs/libfontenc-1.1.3 | `-static-libs`
x11-libs/libICE-1.0.9-r1 | `-doc -ipv6 -static-libs`
x11-libs/libpciaccess-0.13.4 | `zlib -static-libs`
x11-libs/libSM-1.2.2-r1 | `uuid -doc -ipv6 -static-libs`
x11-libs/libX11-1.6.5 | `-doc -ipv6 -static-libs {-test}`
x11-libs/libXau-1.0.8 | `-static-libs`
x11-libs/libxcb-1.12-r2 | `-doc (-selinux) -static-libs {-test} -xkb`
x11-libs/libXcomposite-0.4.4-r1 | `-doc -static-libs`
x11-libs/libXcursor-1.1.14 | `-static-libs`
x11-libs/libXdamage-1.1.4-r1 | `-static-libs`
x11-libs/libXdmcp-1.1.2-r1 | `-doc -static-libs`
x11-libs/libXext-1.3.3 | `-doc -static-libs`
x11-libs/libXfixes-5.0.3 | `-static-libs`
x11-libs/libXfont2-2.0.2 | `bzip2 -doc -ipv6 -static-libs -truetype`
x11-libs/libXi-1.7.9 | `-doc -static-libs`
x11-libs/libxkbfile-1.0.9 | `-static-libs`
x11-libs/libXmu-1.1.2 | `-doc -ipv6 -static-libs`
x11-libs/libXrandr-1.5.1 | `-static-libs`
x11-libs/libXrender-0.9.10 | `-static-libs`
x11-libs/libXScrnSaver-1.2.2-r1 | `-static-libs`
x11-libs/libxshmfence-1.2 | `-static-libs`
x11-libs/libXt-1.1.5 | `-static-libs {-test}`
x11-libs/libXtst-1.2.3 | `-doc -static-libs`
x11-libs/libXxf86vm-1.1.4 | `-static-libs`
x11-libs/pango-1.40.6 | `introspection -`
x11-libs/pixman-0.34.0 | `(-altivec) (-iwmmxt) (-loongson2f) (-neon) -static-libs`
x11-libs/xtrans-1.3.5 | `-doc`
x11-misc/shared-mime-info-1.8 | `{-test}`
x11-misc/xbitmaps-1.1.1-r1 | ``
x11-misc/xkeyboard-config-2.20 | ``
x11-proto/compositeproto-0.4.2-r1 | ``
x11-proto/damageproto-1.2.1-r1 | ``
x11-proto/fixesproto-5.0-r1 | ``
x11-proto/fontsproto-2.1.3 | `-doc`
x11-proto/inputproto-2.3.2 | ``
x11-proto/kbproto-1.0.7 | ``
x11-proto/randrproto-1.5.0 | ``
x11-proto/recordproto-1.14.2-r1 | `-doc`
x11-proto/renderproto-0.11.1-r1 | ``
x11-proto/scrnsaverproto-1.2.2-r1 | `-doc`
x11-proto/xextproto-7.3.0 | `-doc`
x11-proto/xf86bigfontproto-1.2.0-r1 | ``
x11-proto/xf86vidmodeproto-2.3.1-r1 | ``
x11-proto/xproto-7.0.31 | `-doc`
x11-themes/adwaita-icon-theme-3.22.0-r2 | `-branding`
x11-themes/gnome-themes-standard-3.22.3 | ``
x11-themes/gtk-engines-adwaita-3.22.3 | ``
x11-themes/hicolor-icon-theme-0.15 | ``
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl** |
app-misc/ca-certificates-20170717.3.33 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r8 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017a | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
