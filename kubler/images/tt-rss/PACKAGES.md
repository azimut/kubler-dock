### kubler-spin/tt-rss:20170423

Built: Tue Nov  7 01:39:51 ART 2017
Image Size: 81.5MB

#### Installed
Package | USE Flags
--------|----------
app-admin/apache-tools-2.4.27 | `ssl (-libressl)`
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-eselect/eselect-php-0.9.2 | `apache2 -fpm`
app-eselect/eselect-postgresql-2.2 | ``
app-misc/editor-wrapper-4 | ``
app-misc/mime-types-9 | ``
dev-db/postgresql-9.6.4 | `ssl threads zlib -doc -kerberos -ldap (-libressl) -nls -pam -perl -pg`
dev-lang/php-5.6.31 | `apache2 bcmath bzip2 crypt ctype curl fileinfo filter gd hash iconv inifile json mhash opcache pdo posix postgres session simplexml ssl threads tokenizer unicode xml xmlreader xmlwriter zlib -acl -berkdb -calendar -cdb -cgi -cjk -cli -coverage -debug -embed -enchant -exif (-firebird) -flatfile -fpm -ftp -gdbm -gmp -imap -intl -iodbc -ipv6 -kerberos -ldap -ldap-sasl -libedit -libmysqlclient (-libressl) -mssql -mysql -mysqli -nls -oci8-instant-client -odbc -pcntl -phar -qdbm -readline -recode (-selinux) -sharedmem -snmp -soap -sockets -spell -sqlite -sybase-ct -systemd -sysvipc -tidy -truetype -vpx -wddx -xmlrpc -xpm -xslt -zip`
dev-libs/apr-1.5.2 | `urandom -doc -older-kernels-compatibility (-selinux) -static-libs`
dev-libs/apr-util-1.5.4 | `berkdb -doc -freetds -gdbm -ldap -mysql -nss -odbc -openssl -postgres -sqlite -static-libs`
dev-libs/expat-2.2.1 | `unicode -examples -static-libs`
dev-libs/libmcrypt-2.5.8-r4 | ``
dev-libs/libpcre-8.41 | `bzip2 cxx recursion-limit (unicode) zlib -jit -libedit -pcre16 -pcre32 -readline -static-libs`
dev-libs/libxml2-2.9.4-r3 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/oniguruma-6.6.1 | `-combination-explosion-check -crnl-as-line-terminator -static-libs`
media-libs/libjpeg-turbo-1.5.1 | `-java -static-libs`
media-libs/libpng-1.6.29 | `-apng (-neon) -static-libs`
net-misc/curl-7.56.1 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/coreutils-8.26 | `(xattr) -acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static -vanilla`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/less-487 | `pcre unicode`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-apps/util-linux-2.28.2 | `unicode -build -caps -cramfs -fdformat -kill -ncurses -nls -pam -python -readline (-selinux) -slang -static-libs -suid -systemd {-test} -tty-helpers -udev`
sys-libs/db-5.3.28-r2 | `cxx -doc -examples -java -tcl {-test}`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
www-servers/apache-2.4.27-r1 | `ssl threads -debug -doc -ldap (-libressl) (-selinux) -static -suexec`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/openssl** |
app-misc/ca-certificates-20170717.3.33 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2m | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r8 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017a | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
