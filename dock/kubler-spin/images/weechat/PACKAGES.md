### kubler-spin/weechat:20180628

Built: Fri Jul 20 15:33:17 -03 2018
Image Size: 75.3MB

#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r9 | `-static -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.23.1 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/lua-5.1.5-r4 | `deprecated -emacs -readline -static`
dev-lang/perl-5.24.3-r1 | `-berkdb -debug -doc -gdbm -ithreads`
dev-lang/python-2.7.14-r1 | `hardened libressl sqlite ssl (threads) (wide-unicode) xml (-berkdb) -build -doc -examples -gdbm -ipv6 -ncurses -readline -tk -wininst`
dev-lang/python-exec-2.4.5 | ` `
dev-libs/expat-2.2.5 | `unicode -examples -static-libs`
dev-libs/gmp-6.1.2 | `asm cxx -doc -pgo -static-libs`
dev-libs/libffi-3.2.1 | `-debug -pax`
dev-libs/libgcrypt-1.8.3 | `-doc -o-flag-munging -static-libs`
dev-libs/libgpg-error-1.29 | `-common-lisp -nls -static-libs`
dev-libs/libtasn1-4.13 | `-doc -static-libs -valgrind`
dev-libs/libunistring-0.9.7 | `-doc -static-libs`
dev-libs/nettle-3.4 | `gmp -doc (-neon) -static-libs {-test}`
dev-python/backports-1.0 | ` `
dev-python/backports-ssl-match-hostname-3.5.0.1-r1 | ` `
dev-python/six-1.11.0 | `-doc {-test}`
dev-python/websocket-client-0.40.0 | `-examples`
net-irc/weechat-2.1 | `alias buflist charset fset irc logger lua perl python relay scripts ssl trigger -doc -exec -fifo -guile -nls -php -ruby -spell -tcl {-test} -xfer`
net-libs/gnutls-3.5.18 | `cxx openssl seccomp tls-heartbeat zlib (-dane) -doc -examples -guile -idn -nls -openpgp -pkcs11 -sslv2 -sslv3 -static-libs {-test} (-test-full) -tools -valgrind`
net-misc/curl-7.60.0 | `ssl threads -adns -brotli -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
perl-core/File-Path-2.130.0 | ``
perl-core/File-Temp-0.230.400-r1 | ``
sys-libs/ncurses-6.1-r2 | `cxx minimal threads unicode (-ada) -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl-musl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20180409.3.37 | `-cacert`
dev-libs/libressl-2.6.5 | `asm -static-libs {-test}`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.19 | `-headers-only`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.4 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
