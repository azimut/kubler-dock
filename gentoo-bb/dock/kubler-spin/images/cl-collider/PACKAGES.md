### kubler-spin/cl-collider:20170423

Built: Mon Sep  4 05:40:27 ART 2017
Image Size: 233MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-editors/emacs-25.2 | `gtk3 inotify pax`
app-emacs/emacs-common-gentoo-1.6 | `-`
app-emacs/slime-2.15 | `-doc -xref`
app-eselect/eselect-ctags-1.18 | ``
app-eselect/eselect-emacs-1.18 | ``
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/libtasn1-4.10-r2 | `-doc -static-libs -valgrind`
dev-libs/libunistring-0.9.7 | `-doc -static-libs`
dev-libs/nettle-3.3-r2 | `gmp -doc (-neon) -static-libs {-test}`
dev-lisp/asdf-3.1.5 | `-doc`
dev-lisp/sbcl-1.3.11 | `pax`
dev-lisp/uiop-3.1.5 | ``
net-libs/gnutls-3.5.13 | `cxx openssl seccomp tls-heartbeat zlib -dane -doc -examples -guile -idn -nls -openpgp -pkcs11 -sslv2 -sslv3 -static-libs {-test} (-test-full) -tools -valgrind`
net-libs/liblockfile-1.09 | ``
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/coreutils-8.25 | `(xattr) -acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static -vanilla`
sys-apps/file-5.30 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
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
