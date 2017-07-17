### kubler-spin/elasticsearch-tresdos:20170423

Built: Fri Jul  7 06:53:55 ART 2017
Image Size: 189.9 MB

#### Installed
Package | USE Flags
--------|----------
app-misc/elasticsearch-5.4.1 | ``
app-shells/bash-4.3_p48-r1 | `net nls (readline) -afs -bashlogger -examples -mem-scramble -plugins`
*manual install*: su-exec-0.2 | https://github.com/ncopa/su-exec/
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/jdk-oracle-tresdos** |
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-java-0.3.0 | ``
app-shells/bash-4.3_p48-r1 | `net nls (readline) -afs -bashlogger -examples -mem-scramble -plugins`
dev-java/java-config-2.2.0-r3 | `{-test}`
dev-java/jna-3.4.1 | `nio-buffers -awt -doc -source {-test}`
dev-java/oracle-jdk-bin-1.8.0.131 | `headless-awt jce -alsa -commercial -cups -derby -doc -examples -fontconfig -javafx -nsplugin (-selinux) -source -visualvm`
dev-lang/python-exec-2.4.4 | ` `
dev-libs/libffi-3.2.1 | `pax`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-apps/baselayout-java-0.1.0 | ``
sys-apps/coreutils-8.25 | `nls (xattr) -acl -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla`
sys-apps/file-5.30 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `nls -acl (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
**FROM kubler-spin/openssl-tresdos** |
app-misc/ca-certificates-20161130.3.30.2 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2k | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/glibc-tresdos** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r4 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
