### kubler-spin/fluentd:20170423

Built: Sun Jul  2 05:37:08 ART 2017
Image Size: 91.22 MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libgcrypt-1.7.7 | `-doc -static-libs`
dev-libs/libgpg-error-1.27-r1 | `nls -common-lisp -static-libs`
dev-libs/libxml2-2.9.4-r1 | `readline -debug -examples -icu -ipv6 -lzma -python -static-libs {-test}`
dev-libs/libxslt-1.1.29-r1 | `crypt -debug -examples -python -static-libs`
dev-ruby/nokogiri-1.8.0 | `-doc {-test}`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/ruby** |
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
