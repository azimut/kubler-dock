### kubler-spin/apache-php:20170326

Built: Sun Apr 23 02:58:00 ART 2017
Image Size: 64.44 MB

#### Installed
Package | USE Flags
--------|----------
app-admin/apache-tools-2.4.25 | `libressl ssl`
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-php-0.9.2 | `apache2 -fpm`
app-eselect/eselect-postgresql-1.2.1 | ``
app-misc/editor-wrapper-4 | ``
app-misc/mime-types-9 | ``
dev-db/postgresql-9.5.5 | `libressl nls readline ssl threads zlib -doc -kerberos -ldap -pam -perl -pg`
dev-lang/php-7.0.17-r1 | `apache2 crypt ctype curl fileinfo filter hash iconv json libressl nls opcache posix postgres readline session simplexml ssl threads tokenizer unicode xml zlib -acl -bcmath -berkdb -bzip2 -calendar -cdb -cgi -cjk -cli -coverage -debug -embed -enchant -exif (-firebird) -flatfile -fpm -ftp -gd -gdbm -gmp -imap -inifile -intl -iodbc -ipv6 -kerberos -ldap -ldap-sasl -libedit -mhash -mssql -mysql -mysqli (-oci8-instant-client) -odbc -pcntl -pdo -phar -phpdbg -qdbm -recode (-selinux) -sharedmem -snmp -soap -sockets -spell -sqlite (-systemd) -sysvipc -tidy -truetype -wddx -webp -xmlreader -xmlrpc -xmlwriter -xpm -xslt -zip`
dev-libs/apr-1.5.2 | `urandom -doc -older-kernels-compatibility (-selinux) -static-libs`
dev-libs/apr-util-1.5.4 | `-berkdb -doc -freetds -gdbm -ldap -mysql -nss -odbc -openssl -postgres -sqlite -static-libs`
dev-libs/expat-2.2.0-r1 | `unicode -examples -static-libs`
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/libltdl-2.4.6 | `-static-libs`
dev-libs/libmcrypt-2.5.8-r4 | ``
dev-libs/libpcre-8.40-r1 | `cxx readline recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre16 -pcre32 -static-libs`
dev-libs/libtasn1-4.10-r1 | `-doc -static-libs -valgrind`
dev-libs/libxml2-2.9.4-r1 | `readline -debug -examples -icu -ipv6 -lzma -python -static-libs {-test}`
dev-libs/nettle-3.3-r1 | `gmp -doc (-neon) -static-libs {-test}`
dev-libs/oniguruma-5.9.5 | `-combination-explosion-check -crnl-as-line-terminator -static-libs`
dev-scheme/guile-1.8.8-r3 | `deprecated nls readline regex threads -debug -debug-freelist -debug-malloc -discouraged -emacs -networking`
mail-mta/nullmailer-1.13-r5 | `ssl`
net-dns/libidn-1.33 | `nls -doc -emacs -java -mono -static-libs`
net-libs/gnutls-3.3.26 | `crywrap cxx nls openssl zlib (-dane) -doc -examples -guile -pkcs11 -static-libs {-test}`
net-misc/curl-7.53.0 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
sys-apps/coreutils-8.25 | `nls -acl -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla -xattr`
sys-apps/file-5.29 | `zlib -python -static-libs`
sys-apps/less-487 | `pcre unicode`
sys-apps/sed-4.2.2 | `nls -acl (-selinux) -static`
sys-apps/shadow-4.4-r2 | `cracklib nls -acl -audit -pam (-selinux) -skey -xattr`
sys-apps/util-linux-2.28.2 | `nls readline unicode -build -caps -cramfs -fdformat -kill -ncurses -pam -python (-selinux) -slang -static-libs -suid (-systemd) {-test} -tty-helpers -udev`
sys-devel/autogen-5.18.4 | `-libopts -static-libs`
sys-devel/gettext-0.19.8.1 | `cxx openmp -acl -cvs -doc -emacs -git -java -ncurses (-nls) -static-libs`
sys-libs/cracklib-2.9.6-r1 | `nls zlib -python -static-libs {-test}`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
www-servers/apache-2.4.25 | `libressl ssl threads -debug -doc -ldap (-selinux) -static -suexec`
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
