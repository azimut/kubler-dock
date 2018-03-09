### kubler-spin/clojure:20170423

Built: Sat Nov 11 00:13:14 ART 2017
Image Size: 193MB

#### Installed
Package | USE Flags
--------|----------
*manual install*: clojure-1.9.0-beta4 | http://clojure.org/
*manual install*: boot-latest | https://github.com/boot-clj/boot
*manual install*: lein-latest | https://leiningen.org/
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/jdk-oracle-head** |
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-java-0.3.0 | ``
app-shells/bash-4.3_p48-r1 | ``
dev-java/java-config-2.2.0-r3 | `{-test}`
dev-java/oracle-jdk-bin-1.8.0.152-r1 | `jce -alsa -commercial -cups -derby -doc -examples -fontconfig -headless-awt -javafx -nsplugin (-selinux) -source -visualvm`
dev-libs/libbsd-0.8.6 | `-static-libs`
dev-libs/libpthread-stubs-0.4 | `-static-libs`
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/baselayout-java-0.1.0 | ``
sys-apps/coreutils-8.26 | `(xattr) -acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static -vanilla`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
x11-libs/libX11-1.6.5 | `-doc -ipv6 -static-libs {-test}`
x11-libs/libXau-1.0.8 | `-static-libs`
x11-libs/libxcb-1.12-r2 | `-doc (-selinux) -static-libs {-test} -xkb`
x11-libs/libXdmcp-1.1.2-r1 | `-doc -static-libs`
x11-libs/libXext-1.3.3 | `-doc -static-libs`
x11-libs/libXfixes-5.0.3 | `-static-libs`
x11-libs/libXi-1.7.9 | `-doc -static-libs`
x11-libs/libXrender-0.9.10 | `-static-libs`
x11-libs/libXtst-1.2.3 | `-doc -static-libs`
x11-libs/xtrans-1.3.5 | `-doc`
x11-proto/fixesproto-5.0-r1 | ``
x11-proto/inputproto-2.3.2 | ``
x11-proto/kbproto-1.0.7 | ``
x11-proto/recordproto-1.14.2-r1 | `-doc`
x11-proto/renderproto-0.11.1-r1 | ``
x11-proto/xextproto-7.3.0 | `-doc`
x11-proto/xf86bigfontproto-1.2.0-r1 | ``
x11-proto/xproto-7.0.31 | `-doc`
**FROM kubler-spin/openssl** |
app-misc/ca-certificates-20170717.3.33 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2m | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r8 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017a | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
