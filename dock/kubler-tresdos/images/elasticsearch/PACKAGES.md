### kubler-tresdos/elasticsearch:20180227

Built: Tue Mar 20 22:27:23 EDT 2018
Image Size: 192MB


#### Installed
Package | USE Flags
--------|----------
app-misc/elasticsearch-5.6.8 | ``
app-shells/bash-4.4_p12 | `(readline) -afs -bashlogger -examples -mem-scramble -net -nls -plugins`
*manual install*: su-exec-0.2 | https://github.com/ncopa/su-exec/
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-tresdos/jdk-oracle** |
app-admin/eselect-1.4.11 | `-doc -emacs -vim-syntax`
app-eselect/eselect-java-0.4.0 | ``
app-shells/bash-4.4_p12 | `(readline) -afs -bashlogger -examples -mem-scramble -net -nls -plugins`
dev-java/java-config-2.2.0-r3 | `{-test}`
dev-java/jna-3.4.1 | `nio-buffers -awt -doc -source {-test}`
dev-java/oracle-jdk-bin-1.8.0.162-r1 | `headless-awt jce -alsa -commercial -cups -derby -doc -examples -fontconfig -javafx -nsplugin (-selinux) -source -visualvm`
dev-lang/python-exec-2.4.5 | ` `
dev-libs/libffi-3.2.1 | `-debug -pax`
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/baselayout-java-0.1.0 | ``
sys-apps/coreutils-8.28-r1 | `(xattr) -acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static {-test} -vanilla`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-7.0_p3 | `-static-libs -utils`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
**FROM kubler-tresdos/openssl** |
app-misc/ca-certificates-20170717.3.36 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2n | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-tresdos/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r10 | `hardened rpc -audit -caps -debug -gd -headers-only (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017c | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
