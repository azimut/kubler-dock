### kubler-spin/ruby:20170423

Built: Sun Jul  2 01:27:40 ART 2017
Image Size: 35.99 MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-ruby-20161226 | ``
dev-lang/ruby-2.4.1-r2 | `libressl rdoc ssl -berkdb -debug -doc -examples -gdbm -ipv6 -jemalloc -rubytests -socks5 -static-libs -tk -xemacs`
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/libffi-3.2.1 | `pax`
dev-libs/libyaml-0.1.7 | `-doc -examples -static-libs {-test}`
dev-ruby/did_you_mean-1.1.2 | `{-test}`
dev-ruby/json-2.1.0 | `-doc {-test}`
dev-ruby/minitest-5.10.2 | `-doc {-test}`
dev-ruby/net-telnet-0.1.1-r1 | `-doc {-test}`
dev-ruby/power_assert-1.0.2 | `-doc {-test}`
dev-ruby/rake-12.0.0 | `-doc {-test}`
dev-ruby/rdoc-5.1.0 | `-doc {-test}`
dev-ruby/rubygems-2.6.12 | `-server {-test}`
dev-ruby/test-unit-3.2.5 | `-doc {-test}`
dev-ruby/xmlrpc-0.3.0 | `-doc {-test}`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-apps/coreutils-8.25 | `nls xattr -acl -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla`
sys-apps/file-5.30 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `nls -acl (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
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
