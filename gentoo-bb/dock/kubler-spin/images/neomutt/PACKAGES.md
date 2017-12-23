### kubler-spin/neomutt:20170423

Built: Sat Dec 23 01:56:07 ART 2017
Image Size: 10.8MB



#### Installed
Package | USE Flags
--------|----------
app-misc/mime-types-9 | ``
mail-client/neomutt-20171215 | `crypt doc libressl smime ssl -berkdb -gdbm -gnutls -gpg -gpgme -idn -kerberos -kyotocabinet -lmdb -nls -notmuch -pgp`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl-musl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20170717.3.34.1 | `-cacert -insecure`
dev-libs/libressl-2.6.0 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.18 | ``
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.27.2 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
