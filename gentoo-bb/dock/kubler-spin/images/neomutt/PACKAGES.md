### kubler-spin/neomutt:20180127

Built: mar ene 30 17:51:46 -03 2018
Image Size: 12.1MB

#### Installed
Package | USE Flags
--------|----------
app-misc/mime-types-9 | ``
dev-db/lmdb-0.9.18 | `-static-libs`
mail-client/neomutt-20171215-r2 | `crypt doc libressl lmdb smime ssl -berkdb -gdbm -gnutls -gpg -gpgme -idn -kerberos -kyotocabinet -nls -notmuch -pgp`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl-musl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20170717.3.35 | `-cacert -insecure`
dev-libs/libressl-2.6.0 | `asm -static-libs`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.18 | `-headers-only`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
