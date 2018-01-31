### kubler-spin/extempore:20170423

Built: Mon May  8 03:33:37 ART 2017
Image Size: 232.9 MB

#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r7 | `-static -static-libs`
app-misc/mime-types-9 | ``
dev-lang/perl-5.24.1-r1 | `berkdb -debug -doc -gdbm -ithreads`
dev-lang/python-2.7.12 | `hardened readline ssl (threads) (wide-unicode) xml (-berkdb) -build -doc -examples -gdbm -ipv6 (-libressl) -ncurses -sqlite -tk -wininst`
dev-lang/python-exec-2.4.4 | ` `
dev-libs/expat-2.2.0-r1 | `unicode -examples -static-libs`
dev-libs/libffi-3.2.1 | `pax`
media-libs/alsa-lib-1.1.2 | `-alisp -debug -doc -python`
perl-core/File-Temp-0.230.400-r1 | ``
sys-devel/clang-3.8.1-r100 | `static-analyzer -debug -multitarget -python`
sys-devel/llvm-3.8.1-r2 | `clang libffi sanitize static-analyzer -debug -default-compiler-rt -default-libcxx -doc -gold -libedit -lldb -multitarget -ncurses -ocaml -python {-test} -xml`
sys-libs/db-5.3.28-r2 | `cxx -doc -examples -java -tcl {-test}`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/openssl** |
app-misc/ca-certificates-20161130.3.30.2 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2k | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r3 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
