### kubler-spin/logstash:20170423

Built: Wed Jun 21 05:48:17 ART 2017
Image Size: 312.1 MB

#### Installed
Package | USE Flags
--------|----------
app-admin/logstash-bin-5.4.0 | ``
*manual install*: su-exec-0.2 | https://github.com/ncopa/su-exec/
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/jre-oracle** |
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-eselect/eselect-java-0.3.0 | ``
app-shells/bash-4.3_p48-r1 | `net nls (readline) -afs -bashlogger -examples -mem-scramble -plugins`
dev-java/java-config-2.2.0-r3 | `{-test}`
dev-java/oracle-jre-bin-1.8.0.131 | `headless-awt jce -alsa -commercial -cups -fontconfig -javafx -nsplugin (-selinux)`
sys-apps/acl-2.2.52-r1 | `nls -static-libs`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-apps/baselayout-java-0.1.0 | ``
sys-apps/coreutils-8.25 | `acl nls (xattr) -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla`
sys-apps/file-5.30 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `acl nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r3 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
