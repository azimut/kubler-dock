### kubler-spin/postgres:20170423

Built: Fri Dec 22 13:20:04 ART 2017
Image Size: 36.5MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-postgresql-2.2 | ``
app-misc/editor-wrapper-4 | ``
dev-db/postgresql-9.6.6 | `libressl server ssl threads zlib -doc -kerberos -ldap -nls -pam -perl -pg`
dev-libs/libpcre-8.41 | `cxx recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre16 -pcre32 -readline -static-libs`
sys-apps/coreutils-8.28-r1 | `-acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static {-test} -vanilla -xattr`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/less-487 | `pcre unicode`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
*manual install*: su-exec-0.2 | https://github.com/ncopa/su-exec/
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
