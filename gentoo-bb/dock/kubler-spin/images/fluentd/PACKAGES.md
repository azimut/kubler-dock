### kubler-spin/fluentd:20170423

Built: Mon Dec 25 22:37:40 ART 2017
Image Size: 107MB

#### Installed
Package | USE Flags
--------|----------
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/ruby** |
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-ruby-20161226 | ``
dev-lang/ruby-2.4.3 | `berkdb jemalloc libressl ssl -debug -doc -examples -gdbm -ipv6 -rdoc -rubytests -socks5 -static-libs -tk -xemacs`
dev-libs/gmp-6.1.2 | `asm cxx -doc -pgo -static-libs`
dev-libs/jemalloc-3.6.0 | `-debug -static-libs -stats`
dev-libs/libffi-3.2.1 | `-debug -pax`
dev-libs/libyaml-0.1.7 | `-doc -examples -static-libs {-test}`
dev-ruby/did_you_mean-1.1.2 | `{-test}`
dev-ruby/json-2.1.0 | `-doc {-test}`
dev-ruby/minitest-5.10.3 | `-doc {-test}`
dev-ruby/net-telnet-0.1.1-r1 | `-doc {-test}`
dev-ruby/power_assert-1.1.1 | `-doc {-test}`
dev-ruby/rake-12.3.0 | `-doc {-test}`
dev-ruby/rubygems-2.7.3 | `-server {-test}`
dev-ruby/test-unit-3.2.7 | `-doc {-test}`
dev-ruby/xmlrpc-0.3.0 | `-doc {-test}`
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/coreutils-8.28-r1 | `(xattr) -acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static {-test} -vanilla`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-libs/db-5.3.28-r2 | `cxx -doc -examples -java -tcl {-test}`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
**FROM kubler-spin/libressl** |
app-misc/ca-certificates-20170717.3.34.1 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/libressl-2.4.5 | `asm -static-libs`
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
