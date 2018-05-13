### kubler-spin/ruby:20180227

Built: Tue Apr 17 14:00:48 -03 2018
Image Size: 42.5MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.11 | `-doc -emacs -vim-syntax`
app-eselect/eselect-ruby-20171225 | ``
dev-lang/ruby-2.5.0-r2 | `jemalloc libressl ssl -berkdb -debug -doc -examples -gdbm -ipv6 -rdoc -rubytests -socks5 -static-libs -tk -xemacs`
dev-libs/gmp-6.1.2 | `asm cxx -doc -pgo -static-libs`
dev-libs/jemalloc-3.6.0 | `-debug -static-libs -stats`
dev-libs/libffi-3.2.1 | `-debug -pax`
dev-libs/libyaml-0.1.7 | `-doc -examples -static-libs {-test}`
dev-ruby/did_you_mean-1.2.0 | `{-test}`
dev-ruby/json-2.1.0 | `-doc {-test}`
dev-ruby/minitest-5.11.3 | `-doc {-test}`
dev-ruby/net-telnet-0.1.1-r1 | `-doc {-test}`
dev-ruby/power_assert-1.1.1 | `-doc {-test}`
dev-ruby/rake-12.3.0 | `-doc {-test}`
dev-ruby/rubygems-2.7.6 | `-server {-test}`
dev-ruby/test-unit-3.2.7 | `-doc {-test}`
dev-ruby/xmlrpc-0.3.0 | `-doc {-test}`
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/coreutils-8.28-r1 | `(xattr) -acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static {-test} -vanilla`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl** |
app-misc/ca-certificates-20170717.3.36 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r10 | `hardened rpc -audit -caps -debug -gd -headers-only (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017c | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
