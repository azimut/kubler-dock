### kubler-spin/znc:20180628

Built: Fri Jul 20 16:26:30 -03 2018
Image Size: 83.5MB

#### Installed
Package | USE Flags
--------|----------
app-misc/editor-wrapper-4 | ``
dev-db/postgresql-10.3 | `libressl ssl threads zlib -doc -kerberos -ldap -nls -pam -perl -python -readline (-selinux) -server -static-libs (-systemd) -tcl -uuid -xml`
dev-lang/python-exec-2.4.5 | ` `
dev-libs/cyrus-sasl-2.1.26-r11 | `libressl sqlite ssl -authdaemond -berkdb -gdbm -java -kerberos -ldapdb -mysql -openldap -pam -postgres -sample (-selinux) -srp -static-libs -urandom`
dev-libs/icu-60.2 | `-debug -doc -examples -static-libs`
dev-python/psycopg-2.7.3 | `-debug -doc -examples`
net-irc/znc-1.7.0 | `icu libressl python sasl ssl zlib -ipv6 -nls -perl -tcl {-test}`
net-mail/mailbase-1.1 | `-pam`
sys-apps/less-529 | `unicode -pcre`
sys-libs/ncurses-6.1-r2 | `cxx minimal threads unicode (-ada) -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/python3** |
app-arch/bzip2-1.0.6-r9 | `-static -static-libs`
app-arch/xz-utils-5.2.3 | `extra-filters threads -nls -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.23.1 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/python-3.6.5 | `hardened libressl sqlite ssl (threads) xml -build -examples -gdbm -ipv6 -ncurses -readline {-test} -tk -wininst`
dev-libs/expat-2.2.5 | `unicode -examples -static-libs`
dev-libs/libffi-3.2.1 | `-debug -pax`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
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
