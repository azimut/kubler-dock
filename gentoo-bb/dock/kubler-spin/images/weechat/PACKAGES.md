### kubler-spin/weechat:20170423

Built: Wed Dec 20 16:21:04 ART 2017
Image Size: 69.9MB

#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-misc/mime-types-9 | ``
dev-lang/perl-5.24.3 | `-berkdb -debug -doc -gdbm -ithreads`
dev-lang/python-2.7.14 | `hardened libressl ssl (threads) (wide-unicode) xml (-berkdb) -build -doc -examples -gdbm -ipv6 -ncurses -readline -sqlite -tk -wininst`
dev-lang/python-exec-2.4.4 | ` `
dev-libs/expat-2.2.1 | `unicode -examples -static-libs`
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/libffi-3.2.1 | `-debug -pax`
dev-libs/libgcrypt-1.8.1 | `-doc -static-libs`
dev-libs/libgpg-error-1.27-r1 | `-common-lisp -nls -static-libs`
dev-libs/libtasn1-4.12-r1 | `-doc -static-libs -valgrind`
dev-libs/libunistring-0.9.7 | `-doc -static-libs`
dev-libs/nettle-3.3-r2 | `gmp -doc (-neon) -static-libs {-test}`
dev-python/backports-1.0 | ` `
dev-python/backports-ssl-match-hostname-3.5.0.1-r1 | ` `
dev-python/six-1.10.0 | `-doc {-test}`
dev-python/websocket-client-0.37.0 | `-examples`
net-irc/weechat-1.9.1 | `alias buflist charset irc logger perl python relay scripts ssl trigger -doc -exec -fifo -guile -lua -nls -ruby -spell -tcl {-test} -xfer`
net-libs/gnutls-3.5.15 | `cxx openssl seccomp tls-heartbeat zlib (-dane) -doc -examples -guile -idn -nls -openpgp -pkcs11 -sslv2 -sslv3 -static-libs {-test} (-test-full) -tools -valgrind`
net-misc/curl-7.56.1 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
perl-core/File-Path-2.130.0 | ``
perl-core/File-Temp-0.230.400-r1 | ``
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl-musl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20170717.3.33 | `-cacert -insecure`
dev-libs/libressl-2.6.0 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.18 | ``
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.27.2 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
