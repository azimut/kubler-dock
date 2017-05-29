### kubler-spin/supercollider:20170423

Built: Sun May 28 03:55:35 ART 2017
Image Size: 64.55 MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libbsd-0.8.3 | `-static-libs`
dev-libs/libpthread-stubs-0.3-r1 | `-static-libs`
media-libs/alsa-lib-1.1.2 | `-alisp -debug -doc -python`
media-libs/flac-1.3.2-r1 | `cxx (-altivec) -debug -ogg -static-libs`
media-libs/libogg-1.3.2 | `-static-libs`
media-libs/libsamplerate-0.1.9 | `-sndfile -static-libs`
media-libs/libsndfile-1.0.28 | `-alsa -minimal -sqlite -static-libs {-test}`
media-libs/libvorbis-1.3.5 | `-static-libs`
media-sound/jack-audio-connection-kit-0.124.1 | `-alsa (-altivec) -celt (-coreaudio) -cpudetection -debug -doc -examples -ieee1394 -oss -pam -zalsa`
media-sound/supercollider-3.8.0 | `fftw gpl3 jack server sndfile -avahi -debug -emacs -gedit -portaudio -qt5 -static-libs -vim -wiimote`
sci-libs/fftw-3.3.4 | `openmp threads (-altivec) -doc -fortran -mpi (-neon) -quad -static-libs {-test} (-zbus)`
sys-apps/util-linux-2.28.2 | `nls readline unicode -build -caps -cramfs -fdformat -kill -ncurses -pam -python (-selinux) -slang -static-libs -suid -systemd {-test} -tty-helpers -udev`
sys-libs/db-5.3.28-r2 | `cxx -doc -examples -java -tcl {-test}`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
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
