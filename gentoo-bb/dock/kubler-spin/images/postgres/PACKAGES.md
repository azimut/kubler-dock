### kubler-spin/postgres:20170423

Built: Sun Jul 16 01:03:41 ART 2017
Image Size: 40.44 MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-postgresql-2.1 | ``
app-misc/editor-wrapper-4 | ``
dev-db/postgresql-9.6.3-r1 | `libressl nls readline server ssl threads zlib -doc -kerberos -ldap -pam -perl -pg`
dev-libs/libpcre-8.40-r1 | `cxx readline recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre16 -pcre32 -static-libs`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-apps/coreutils-8.25 | `nls xattr -acl -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla`
sys-apps/file-5.30 | `zlib -python -static-libs`
sys-apps/less-487 | `pcre unicode`
sys-apps/sed-4.2.2 | `nls -acl (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
*manual install*: su-exec-0.2 | https://github.com/ncopa/su-exec/
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
