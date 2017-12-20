### kubler-spin/jdk-oracle:20170423

Built: Fri Nov 10 15:10:56 ART 2017
Image Size: 184MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-java-0.3.0 | ``
app-shells/bash-4.3_p48-r1 | ``
dev-java/java-config-2.2.0-r3 | `{-test}`
dev-java/oracle-jdk-bin-1.8.0.152-r1 | `headless-awt jce -alsa -commercial -cups -derby -doc -examples -fontconfig -javafx -nsplugin (-selinux) -source -visualvm`
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/baselayout-java-0.1.0 | ``
sys-apps/coreutils-8.26 | `(xattr) -acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static -vanilla`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
#### Inherited
Package | USE Flags
--------|----------
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
