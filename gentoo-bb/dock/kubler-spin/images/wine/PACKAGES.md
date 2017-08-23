### kubler-spin/wine:20170423

Built: Sun Aug  6 01:37:59 ART 2017
Image Size: 394MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-emulation/wine-2.0 | ``
app-eselect/eselect-fontconfig-1.1 | ``
app-eselect/eselect-mesa-0.0.10-r1 | ``
app-eselect/eselect-opengl-1.3.1-r4 | ``
app-shells/bash-4.3_p48-r1 | `nls (readline) -afs -bashlogger -examples -mem-scramble -net -plugins`
dev-libs/expat-2.2.1 | `unicode -examples -static-libs`
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/libffi-3.2.1 | `pax`
dev-libs/libgcrypt-1.7.8 | `-doc -static-libs`
dev-libs/libgpg-error-1.27-r1 | `nls -common-lisp -static-libs`
dev-libs/libpthread-stubs-0.4 | `-static-libs`
dev-libs/libtasn1-4.10-r2 | `-doc -static-libs -valgrind`
dev-libs/libunistring-0.9.7 | `-doc -static-libs`
dev-libs/libxml2-2.9.4-r1 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/libxslt-1.1.29-r1 | `crypt -debug -examples -python -static-libs`
dev-libs/nettle-3.3-r1 | `gmp -doc (-neon) -static-libs {-test}`
media-fonts/liberation-fonts-2.00.1-r1 | `-`
media-libs/fontconfig-2.11.1-r2 | `-doc -static-libs`
media-libs/freetype-2.8 | `adobe-cff cleartype`
media-libs/glu-9.0.0-r1 | `-static-libs`
media-libs/lcms-2.8-r1 | `threads zlib -doc -jpeg -static-libs {-test} -tiff`
media-libs/libjpeg-turbo-1.5.1 | `-java -static-libs`
media-libs/libpng-1.6.29 | `-apng (-neon) -static-libs`
media-libs/mesa-17.0.6 | `classic dri3 egl gallium gbm llvm pax`
net-libs/gnutls-3.5.13 | `cxx nls openssl seccomp tls-heartbeat zlib (-dane) -doc -examples -guile -idn -openpgp -pkcs11 -sslv2 -sslv3 -static-libs {-test} (-test-full) -tools -valgrind`
sys-apps/coreutils-8.25 | `nls -acl -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla -xattr`
sys-apps/file-5.30 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `nls -acl (-selinux) -static`
sys-devel/gettext-0.19.8.1 | `cxx openmp -acl -cvs -doc -emacs -git -java -ncurses (-nls) -static-libs`
sys-devel/llvm-3.9.1-r1 | `libffi static-analyzer -clang -debug -default-compiler-rt -default-libcxx -doc -gold -libedit (-lldb) -multitarget -ncurses -ocaml -python (-sanitize) {-test} -xml`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
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
x11-libs/libXxf86vm-1.1.4 | `-static-libs`
x11-libs/libdrm-2.4.80 | `-libkms -static-libs -valgrind`
x11-libs/libxcb-1.12-r2 | `-doc (-selinux) -static-libs {-test} -xkb`
x11-libs/libxshmfence-1.2 | `-static-libs`
x11-libs/xtrans-1.3.5 | `-doc`
x11-proto/compositeproto-0.4.2-r1 | ``
x11-proto/damageproto-1.2.1-r1 | ``
x11-proto/fixesproto-5.0-r1 | ``
x11-proto/inputproto-2.3.2 | ``
x11-proto/kbproto-1.0.7 | ``
x11-proto/randrproto-1.5.0 | ``
x11-proto/renderproto-0.11.1-r1 | ``
x11-proto/xextproto-7.3.0 | `-doc`
x11-proto/xf86bigfontproto-1.2.0-r1 | ``
x11-proto/xf86vidmodeproto-2.3.1-r1 | ``
x11-proto/xproto-7.0.31 | `-doc`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.16 | ``
**FROM kubler-spin/busybox** |
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.26.2-r1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
