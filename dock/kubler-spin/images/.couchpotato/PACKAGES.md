### kubler-spin/couchpotato:20170326

Built: Mon Apr 17 02:17:50 ART 2017
Image Size: 52.86 MB

#### Installed
Package | USE Flags
--------|----------
dev-lang/python-exec-2.4.4 | ` `
dev-libs/libgcrypt-1.7.6 | `-doc -static-libs`
dev-libs/libgpg-error-1.27-r1 | `nls -common-lisp -static-libs`
dev-libs/libxml2-2.9.4-r1 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/libxslt-1.1.29-r1 | `crypt -debug -examples -python -static-libs`
dev-python/certifi-2016.9.26 | ` `
dev-python/cffi-1.9.1 | `-doc {-test}`
dev-python/cryptography-1.7.1 | `libressl {-test}`
dev-python/enum34-1.1.6 | `-doc`
dev-python/idna-2.0 | ` `
dev-python/ipaddress-1.0.14 | ` `
dev-python/lxml-3.7.3 | `threads -doc -examples {-test}`
dev-python/ply-3.9 | `-examples`
dev-python/pyasn1-0.1.8 | `-doc`
dev-python/pycparser-2.14 | `{-test}`
dev-python/pyopenssl-16.2.0 | `-doc -examples {-test}`
dev-python/setuptools-30.4.0 | `{-test}`
dev-python/six-1.10.0 | `-doc {-test}`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/python2** |
app-arch/bzip2-1.0.6-r7 | `-static -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.17.0 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/python-2.7.12 | `hardened libressl sqlite ssl (threads) (wide-unicode) xml (-berkdb) -build -doc -examples -gdbm -ipv6 -ncurses -readline -tk -wininst`
dev-libs/expat-2.2.0-r1 | `unicode -examples -static-libs`
dev-libs/libffi-3.2.1 | `pax`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
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
