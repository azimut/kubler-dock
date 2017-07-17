### kubler-spin/neomutt:20170423

Built: Fri May 19 04:10:30 ART 2017
Image Size: 12.64 MB

#### Installed
Package | USE Flags
--------|----------
app-misc/mime-types-9 | ``
mail-client/neomutt-20170428 | `crypt imap libressl nls sidebar smime smtp ssl -berkdb -debug -doc -gdbm -gnutls -gpg -idn -kerberos -mbox -nntp -notmuch -pop -qdbm -sasl (-selinux) -slang -tokyocabinet`
sys-libs/ncurses-6.0-r1 | `cxx threads unicode (-ada) -debug -doc -gpm -minimal -profile -static-libs {-test} -tinfo -trace`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl-musl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.30.2 | `-cacert -insecure`
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.16 | ``
**FROM kubler-spin/busybox** |
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.26.2-r1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
