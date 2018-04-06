### kubler-spin/znc:20180227

Built: Thu Apr  5 23:23:37 EDT 2018
Image Size: 89.6MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.11 | `-doc -emacs -vim-syntax`
app-eselect/eselect-postgresql-2.3 | ``
app-misc/editor-wrapper-4 | ``
dev-db/postgresql-10.3 | `libressl ssl threads zlib -doc -kerberos -ldap -nls -pam -perl -python -readline (-selinux) -server -static-libs (-systemd) -tcl -uuid -xml`
dev-lang/python-exec-2.4.5 | ` `
dev-libs/cyrus-sasl-2.1.26-r11 | `libressl sqlite ssl -authdaemond -berkdb -gdbm -java -kerberos -ldapdb -mysql -openldap -pam -postgres -sample (-selinux) -srp -static-libs -urandom`
dev-libs/icu-60.2 | `-debug -doc -examples -static-libs`
dev-libs/libpcre-8.41-r1 | `cxx recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre16 -pcre32 -readline -static-libs`
dev-python/psycopg-2.7.3 | `-debug -doc -examples`
net-irc/znc-1.6.5 | `daemon icu libressl python sasl ssl zlib -debug -ipv6 -perl -tcl {-test}`
net-mail/mailbase-1.1 | `-pam`
sys-apps/coreutils-8.28-r1 | `-acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static {-test} -vanilla -xattr`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/less-529 | `pcre unicode`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/python3** |
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-arch/xz-utils-5.2.3 | `extra-filters threads -nls -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.22.0 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/python-3.5.4-r1 | `hardened libressl sqlite ssl (threads) xml -build -examples -gdbm -ipv6 -ncurses -readline {-test} -tk -wininst`
dev-libs/expat-2.2.5 | `unicode -examples -static-libs`
dev-libs/libffi-3.2.1 | `-debug -pax`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
**FROM kubler-spin/libressl-musl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20170717.3.36 | `-cacert -insecure`
dev-libs/libressl-2.6.0 | `asm -static-libs`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.19 | `-headers-only`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
