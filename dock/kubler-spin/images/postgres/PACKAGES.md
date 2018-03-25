### kubler-spin/postgres:20180227

Built: Sat Mar 24 22:00:10 EDT 2018
Image Size: 37.4MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.11 | `-doc -emacs -vim-syntax`
app-eselect/eselect-postgresql-2.3 | ``
app-misc/editor-wrapper-4 | ``
dev-db/postgresql-10.3 | `libressl server ssl threads zlib -doc -kerberos -ldap -nls -pam -perl -python -readline (-selinux) -static-libs (-systemd) -tcl -uuid -xml`
dev-libs/libpcre-8.41-r1 | `cxx recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre16 -pcre32 -readline -static-libs`
sys-apps/coreutils-8.28-r1 | `-acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static {-test} -vanilla -xattr`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/less-529 | `pcre unicode`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/timezone-data-2017c | `-leaps`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
*manual install*: su-exec-0.2 | https://github.com/ncopa/su-exec/
#### Inherited
Package | USE Flags
--------|----------
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
