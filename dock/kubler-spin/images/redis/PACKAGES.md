### kubler-spin/redis:20180227

Built: Sat Apr  7 20:39:22 -03 2018
Image Size: 6.06MB

#### Installed
Package | USE Flags
--------|----------
dev-db/redis-4.0.8 | `jemalloc -luajit -tcmalloc {-test}`
dev-lang/lua-5.1.5-r4 | `-deprecated -emacs -readline -static`
dev-libs/jemalloc-3.6.0 | `-debug -static-libs -stats`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/musl** |
sys-libs/musl-1.1.19 | `-headers-only`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
