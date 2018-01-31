### kubler-spin/spectrum:20170423

Built: Thu Dec 21 23:46:56 ART 2017
Image Size: 89.2MB


#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.20.1-r1 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/lua-5.1.5-r4 | `-deprecated -emacs -readline -static`
dev-lang/python-2.7.14-r1 | `hardened readline ssl (threads) (wide-unicode) xml (-berkdb) -build -doc -examples -gdbm -ipv6 -libressl -ncurses -sqlite -tk -wininst`
dev-lang/python-exec-2.4.5 | ` `
dev-libs/apr-1.5.2 | `urandom -doc -older-kernels-compatibility (-selinux) -static-libs`
dev-libs/apr-util-1.5.4 | `berkdb -doc -freetds -gdbm -ldap -mysql -nss -odbc -openssl -postgres -sqlite -static-libs`
dev-libs/boost-1.63.0 | `nls threads -context -debug -doc -icu -mpi -python -static-libs -tools`
dev-libs/expat-2.2.1 | `unicode -examples -static-libs`
dev-libs/gmp-6.1.2 | `asm cxx -doc -pgo -static-libs`
dev-libs/libffi-3.2.1 | `-debug -pax`
dev-libs/libxml2-2.9.6 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/log4cxx-0.10.0-r1 | `unicode -iodbc -odbc -smtp`
dev-libs/popt-1.16-r2 | `-nls -static-libs`
dev-libs/protobuf-3.1.0 | `python zlib -emacs -examples -java -static-libs {-test} -vim-syntax`
dev-python/axolotl-9999-r1 | ` `
dev-python/axolotl-curve25519-9999-r1 | ` `
dev-python/beautifulsoup-3.2.1-r1 | ` `
dev-python/configargparse-0.11.0 | ` `
dev-python/e4u-9999 | ` `
dev-python/pillow-3.4.2-r1 | `zlib -doc -examples -jpeg -jpeg2k -lcms {-test} -tiff -tk -truetype -webp`
dev-python/protobuf-python-3.1.0 | ` `
dev-python/pycrypto-2.6.1-r2 | `gmp -doc {-test}`
dev-python/python-dateutil-2.6.1 | ` `
dev-python/six-1.10.0 | `-doc {-test}`
net-dns/libidn-1.33-r1 | `-doc -emacs -java -mono -nls -static-libs`
net-im/jabber-base-0.01 | ``
net-im/spectrum-9999 | `sqlite whatsapp -debug -doc -frotz -irc -libev -mysql -postgres -purple -skype -smstools -staticport -symlinks {-test} -tools -twitter`
net-im/swiften-3.0 | `-avahi -expat -gconf -icu -luajit {-test} -upnp`
net-im/transwhat-9999 | ` `
net-im/yowsup-9999 | `encryption`
sys-apps/util-linux-2.30.2 | `unicode -build -caps -cramfs -fdformat -kill -ncurses -nls -pam -python -readline (-selinux) -slang -static-libs -suid -systemd {-test} -tty-helpers -udev`
sys-libs/db-5.3.28-r2 | `cxx -doc -examples -java -tcl {-test}`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/openssl** |
app-misc/ca-certificates-20170717.3.34.1 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2n | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r9 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017c | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
