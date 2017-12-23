### kubler-spin/fluentd:20170423

Built: Fri Dec 22 22:58:32 ART 2017
Image Size: 98.6MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libgcrypt-1.8.1 | `-doc -static-libs`
dev-libs/libgpg-error-1.27-r1 | `-common-lisp -nls -static-libs`
dev-libs/libxml2-2.9.6 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/libxslt-1.1.30-r2 | `crypt -debug -examples -python -static-libs`
dev-ruby/nokogiri-1.8.1 | `-doc {-test}`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/ruby** |
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-ruby-20161226 | ``
dev-lang/ruby-2.4.3 | `libressl rdoc ssl -berkdb -debug -doc -examples -gdbm -ipv6 -jemalloc -rubytests -socks5 -static-libs -tk -xemacs`
dev-libs/gmp-6.1.2 | `asm cxx -doc -pgo -static-libs`
dev-libs/libffi-3.2.1 | `-debug -pax`
dev-libs/libyaml-0.1.7 | `-doc -examples -static-libs {-test}`
dev-ruby/did_you_mean-1.1.2 | `{-test}`
dev-ruby/json-2.1.0 | `-doc {-test}`
dev-ruby/minitest-5.10.3 | `-doc {-test}`
dev-ruby/net-telnet-0.1.1-r1 | `-doc {-test}`
dev-ruby/power_assert-1.1.1 | `-doc {-test}`
dev-ruby/rake-12.3.0 | `-doc {-test}`
dev-ruby/rdoc-6.0.0 | `-doc {-test}`
dev-ruby/rubygems-2.7.3 | `-server {-test}`
dev-ruby/test-unit-3.2.7 | `-doc {-test}`
dev-ruby/xmlrpc-0.3.0 | `-doc {-test}`
sys-apps/coreutils-8.28-r1 | `-acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static {-test} -vanilla -xattr`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
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
