### kubler-spin/swftools:20180227

Built: Sat May 12 23:48:21 -03 2018
Image Size: 55.1MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.11 | `-doc -emacs -vim-syntax`
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-eselect/eselect-fontconfig-1.1 | ``
app-text/poppler-0.62.0-r1 | `cxx introspection jpeg jpeg2k lcms utils -cairo -cjk -curl -debug -doc -nss -png -qt5 -tiff`
dev-libs/expat-2.2.5 | `unicode -examples -static-libs`
media-fonts/liberation-fonts-2.00.1-r1 | `-`
media-gfx/swftools-0.9.2-r1 | ``
media-libs/fontconfig-2.12.6 | `-doc -static-libs`
media-libs/freetype-2.8 | `adobe-cff bzip2 cleartype`
media-libs/giflib-5.1.4 | `-doc -static-libs`
media-libs/lcms-2.9 | `threads -doc -jpeg -static-libs {-test} -tiff`
media-libs/libjpeg-turbo-1.5.1 | `-java -static-libs`
media-libs/libpng-1.6.29 | `-apng (-neon) -static-libs`
media-libs/openjpeg-2.3.0 | `-doc -static-libs {-test}`
media-libs/t1lib-5.1.2-r1 | `-`
media-libs/tiff-4.0.8 | `cxx zlib -jbig -jpeg -lzma -static-libs {-test}`
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/coreutils-8.28-r1 | `(xattr) -acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static {-test} -vanilla`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/openssl** |
app-misc/ca-certificates-20170717.3.36 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2n | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
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
