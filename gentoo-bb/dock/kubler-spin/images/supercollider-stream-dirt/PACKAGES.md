### kubler-spin/supercollider-stream-dirt:20170423

Built: Tue Sep  5 13:04:03 ART 2017
Image Size: 326MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/expat-2.2.1 | `unicode -examples -static-libs`
dev-libs/libbsd-0.8.3 | `-static-libs`
dev-libs/libgcrypt-1.7.8 | `-doc -static-libs`
dev-libs/libgpg-error-1.27-r1 | `-common-lisp -nls -static-libs`
dev-libs/libpthread-stubs-0.4 | `-static-libs`
dev-libs/libxml2-2.9.4-r1 | `-debug -examples -icu -ipv6 -lzma -python -readline -static-libs {-test}`
dev-libs/libxslt-1.1.29-r1 | `crypt -debug -examples -python -static-libs`
dev-vcs/git-2.13.5 | `blksha1 curl threads webdav -cgi -cvs -doc -emacs -gnome-keyring -gpg -highlight -iconv (-libressl) -mediawiki -mediawiki-experimental -nls -pcre -perl (-ppcsha1) -python -subversion {-test} -tk -xinetd`
media-libs/alsa-lib-1.1.2 | `-alisp -debug -doc -python`
media-libs/flac-1.3.2-r1 | `cxx (-altivec) -debug -ogg -static-libs`
media-libs/libogg-1.3.2 | `-static-libs`
media-libs/libsamplerate-0.1.9 | `-sndfile -static-libs`
media-libs/libsndfile-1.0.28-r1 | `-alsa -minimal -sqlite -static-libs {-test}`
media-libs/libvorbis-1.3.5 | `-static-libs`
media-sound/darkice-1.3 | `jack mp3 -aac -aacplus -alsa -debug -libsamplerate -opus -pulseaudio -twolame -vorbis`
media-sound/jack-audio-connection-kit-0.125.0 | `-alsa (-altivec) (-coreaudio) -debug -doc -examples -oss -pam`
media-sound/lame-3.99.5-r1 | `frontend -debug -mp3rtp -sndfile -static-libs`
media-sound/supercollider-3.8.0 | `fftw gpl3 jack server sndfile -avahi -debug -emacs -gedit -native -portaudio -qt5 -static-libs -vim -wiimote`
media-sound/supercollider-plugins-3.8.0 | `-native`
net-misc/curl-7.55.0 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
net-misc/icecast-2.4.3 | `ssl -kate (-libressl) -logrotate -speex -theora -yp`
sci-libs/fftw-3.3.4 | `openmp threads (-altivec) -doc -fortran -mpi (-neon) -quad -static-libs {-test} (-zbus)`
sys-apps/util-linux-2.28.2 | `unicode -build -caps -cramfs -fdformat -kill -ncurses -nls -pam -python -readline (-selinux) -slang -static-libs -suid -systemd {-test} -tty-helpers -udev`
sys-libs/db-5.3.28-r2 | `cxx -doc -examples -java -tcl {-test}`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
x11-libs/libICE-1.0.9-r1 | `-doc -ipv6 -static-libs`
x11-libs/libSM-1.2.2-r1 | `uuid -doc -ipv6 -static-libs`
x11-libs/libX11-1.6.5 | `-doc -ipv6 -static-libs {-test}`
x11-libs/libXau-1.0.8 | `-static-libs`
x11-libs/libxcb-1.12-r2 | `-doc (-selinux) -static-libs {-test} -xkb`
x11-libs/libXdmcp-1.1.2-r1 | `-doc -static-libs`
x11-libs/libXt-1.1.5 | `-static-libs {-test}`
x11-libs/xtrans-1.3.5 | `-doc`
x11-proto/inputproto-2.3.2 | ``
x11-proto/kbproto-1.0.7 | ``
x11-proto/xextproto-7.3.0 | `-doc`
x11-proto/xf86bigfontproto-1.2.0-r1 | ``
x11-proto/xproto-7.0.31 | `-doc`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/openssl** |
app-misc/ca-certificates-20161130.3.32 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2k | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r4 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
