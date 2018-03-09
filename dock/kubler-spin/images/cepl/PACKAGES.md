### kubler-spin/cepl:20170423

Built: Sun Sep 17 19:23:40 ART 2017
Image Size: 384MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-editors/emacs-25.2 | `gtk3 inotify pax`
app-emacs/emacs-common-gentoo-1.6 | ``
app-emacs/slime-2.15 | `-doc -xref`
app-eselect/eselect-ctags-1.18 | ``
app-eselect/eselect-emacs-1.18 | ``
app-eselect/eselect-mesa-0.0.10-r1 | ``
app-eselect/eselect-opengl-1.3.1-r4 | ``
app-shells/bash-4.3_p48-r1 | `(readline) -afs -bashlogger -examples -mem-scramble -net -nls -plugins`
dev-libs/expat-2.2.1 | `unicode -examples -static-libs`
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/libbsd-0.8.3 | `-static-libs`
dev-libs/libffi-3.2.1 | `pax`
dev-libs/libpthread-stubs-0.4 | `-static-libs`
dev-libs/libtasn1-4.12-r1 | `-doc -static-libs -valgrind`
dev-libs/libunistring-0.9.7 | `-doc -static-libs`
dev-libs/nettle-3.3-r2 | `gmp -doc (-neon) -static-libs {-test}`
dev-lisp/asdf-3.1.5 | `-doc`
dev-lisp/sbcl-1.3.11 | `pax`
dev-lisp/uiop-3.1.5 | ``
media-libs/freeglut-3.0.0 | `-debug -static-libs`
media-libs/glu-9.0.0-r1 | `-static-libs`
media-libs/libsdl2-2.0.4 | ``
media-libs/mesa-13.0.5 | `classic dri3 egl gallium gbm gles2 llvm nettle nptl pax`
net-libs/gnutls-3.5.13 | `cxx openssl seccomp tls-heartbeat zlib -dane -doc -examples -guile -idn -nls -openpgp -pkcs11 -sslv2 -sslv3 -static-libs {-test} (-test-full) -tools -valgrind`
net-libs/liblockfile-1.09 | ``
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/coreutils-8.25 | `(xattr) -acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static -vanilla`
sys-apps/file-5.30 | `zlib -python -static-libs`
sys-apps/hwids-20170328 | `net pci udev usb`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-apps/util-linux-2.28.2 | `unicode -build -caps -cramfs -fdformat -kill -ncurses -nls -pam -python -readline (-selinux) -slang -static-libs -suid -systemd {-test} -tty-helpers -udev`
sys-devel/llvm-3.9.1-r1 | `libffi sanitize static-analyzer -clang -debug -default-compiler-rt -default-libcxx -doc -gold -libedit (-lldb) -multitarget -ncurses -ocaml -python {-test} -xml`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
x11-libs/libdrm-2.4.80 | `-libkms -static-libs -valgrind`
x11-libs/libICE-1.0.9-r1 | `-doc -ipv6 -static-libs`
x11-libs/libpciaccess-0.13.4 | `zlib -static-libs`
x11-libs/libSM-1.2.2-r1 | `uuid -doc -ipv6 -static-libs`
x11-libs/libX11-1.6.5 | `-doc -ipv6 -static-libs {-test}`
x11-libs/libXau-1.0.8 | `-static-libs`
x11-libs/libxcb-1.12-r2 | `-doc (-selinux) -static-libs {-test} -xkb`
x11-libs/libXcursor-1.1.14 | `-static-libs`
x11-libs/libXdamage-1.1.4-r1 | `-static-libs`
x11-libs/libXdmcp-1.1.2-r1 | `-doc -static-libs`
x11-libs/libXext-1.3.3 | `-doc -static-libs`
x11-libs/libXfixes-5.0.3 | `-static-libs`
x11-libs/libXi-1.7.9 | `-doc -static-libs`
x11-libs/libXrandr-1.5.1 | `-static-libs`
x11-libs/libXrender-0.9.10 | `-static-libs`
x11-libs/libxshmfence-1.2 | `-static-libs`
x11-libs/libXt-1.1.5 | `-static-libs {-test}`
x11-libs/libXxf86vm-1.1.4 | `-static-libs`
x11-libs/xtrans-1.3.5 | `-doc`
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
**FROM kubler-spin/openssl** |
app-misc/ca-certificates-20161130.3.32 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2k | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r4 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
