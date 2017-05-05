### kubler-spin/weechat:20170326

Built: Wed May  3 19:24:39 ART 2017
Image Size: 83.73 MB

#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r7 | `-static -static-libs`
app-arch/xz-utils-5.2.3 | `nls threads -static-libs`
app-misc/mime-types-9 | ``
dev-lang/perl-5.22.3_rc4 | `-berkdb -debug -doc -gdbm -ithreads`
dev-lang/python-3.4.5 | `hardened libressl ssl (threads) xml -build -examples -gdbm -ipv6 -ncurses -readline -sqlite -tk -wininst`
dev-lang/python-exec-2.4.4 | ` `
dev-libs/expat-2.2.0-r1 | `unicode -examples -static-libs`
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/libffi-3.2.1 | `pax`
dev-libs/libgcrypt-1.7.6 | `-doc -static-libs`
dev-libs/libgpg-error-1.27-r1 | `nls -common-lisp -static-libs`
dev-libs/libtasn1-4.10-r1 | `-doc -static-libs -valgrind`
dev-libs/libxml2-2.9.4-r1 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/nettle-3.3-r1 | `gmp -doc (-neon) -static-libs {-test}`
net-dns/libidn-1.33 | `nls -doc -emacs -java -mono -static-libs`
net-irc/weechat-1.7-r1 | `alias charset irc logger nls perl python relay scripts ssl trigger -doc -exec -fifo -guile -lua -ruby -spell -tcl {-test} -xfer`
net-libs/gnutls-3.3.26 | `crywrap cxx nls openssl zlib (-dane) -doc -examples -guile -pkcs11 -static-libs {-test}`
net-misc/curl-7.53.0 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
perl-core/File-Temp-0.230.400-r1 | ``
sys-devel/autogen-5.18.4 | `-libopts -static-libs`
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
