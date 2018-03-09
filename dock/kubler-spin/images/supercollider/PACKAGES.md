### kubler-spin/supercollider:20180227

Built: jue mar  8 04:05:48 -03 2018
Image Size: 71MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libbsd-0.8.6 | `-static-libs`
dev-libs/libpthread-stubs-0.4 | `-static-libs`
media-libs/alsa-lib-1.1.2 | `-alisp -debug -doc -python`
media-libs/flac-1.3.2-r1 | `cxx (-altivec) -debug -ogg -static-libs`
media-libs/libogg-1.3.2 | `-static-libs`
media-libs/libsamplerate-0.1.9 | `-sndfile -static-libs`
media-libs/libsndfile-1.0.28-r1 | `-alsa -minimal -sqlite -static-libs {-test}`
media-libs/libvorbis-1.3.5 | `-static-libs`
media-sound/jack-audio-connection-kit-0.125.0 | `-alsa (-altivec) (-coreaudio) -debug -doc -examples -oss -pam`
media-sound/supercollider-3.8.1 | `fftw gpl3 jack server sndfile -avahi -debug -emacs -gedit -native -portaudio -qt5 -static-libs -vim -wiimote`
media-sound/supercollider-plugins-3.8.0 | `-native`
sci-libs/fftw-3.3.6_p2 | `openmp threads (-altivec) -doc -fortran -mpi (-neon) -quad -static-libs {-test} (-zbus)`
sys-apps/util-linux-2.30.2 | `unicode -build -caps -cramfs -fdformat -kill -ncurses -nls -pam -python -readline (-selinux) -slang -static-libs -suid -systemd {-test} -tty-helpers -udev`
sys-libs/db-5.3.28-r2 | `cxx -doc -examples -java -tcl {-test}`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-7.0_p3 | `-static-libs -utils`
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
app-misc/ca-certificates-20170717.3.35 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2n | `asm -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla -zlib`
sys-apps/debianutils-4.8.3 | `-static`

#### Purged
- [x] Headers
- [x] Static Libs
