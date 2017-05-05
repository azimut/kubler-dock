### kubler-spin/aria2:20170326

Built: Sun Apr 23 21:29:27 ART 2017
Image Size: 22.8 MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/expat-2.2.0-r1 | `unicode -examples -static-libs`
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/libltdl-2.4.6 | `-static-libs`
dev-libs/libtasn1-4.10-r1 | `-doc -static-libs -valgrind`
dev-libs/libxml2-2.9.4-r1 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/nettle-3.3-r1 | `gmp -doc (-neon) -static-libs {-test}`
dev-scheme/guile-1.8.8-r3 | `nls regex threads -debug -debug-freelist -debug-malloc -deprecated -discouraged -emacs -networking -readline`
net-dns/libidn-1.33 | `nls -doc -emacs -java -mono -static-libs`
net-libs/gnutls-3.3.26 | `crywrap cxx nls openssl zlib (-dane) -doc -examples -guile -pkcs11 -static-libs {-test}`
net-misc/aria2-1.31.0 | `gnutls libxml2 nettle ssl xmlrpc -adns -bittorrent -jemalloc -libuv -metalink -nls -scripts -sqlite -ssh -tcmalloc {-test}`
sys-devel/autogen-5.18.4 | `-libopts -static-libs`
sys-devel/gettext-0.19.8.1 | `cxx openmp -acl -cvs -doc -emacs -git -java -ncurses (-nls) -static-libs`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.30.1 | `-cacert -insecure`
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM kubler-spin/busybox** |
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.26.2 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
