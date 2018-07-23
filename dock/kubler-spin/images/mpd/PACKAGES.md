### kubler-spin/mpd:20180628

Built: Sat Jul 21 20:24:24 -03 2018
Image Size: 55.8MB



#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r9 | `-static -static-libs`
dev-db/sqlite-3.23.1 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-libs/icu-60.2 | `-debug -doc -examples -static-libs`
media-libs/libid3tag-0.15.1b-r4 | `-debug -static-libs`
media-libs/libmad-0.15.1b-r8 | `-debug -static-libs`
media-libs/libogg-1.3.3 | `-static-libs`
media-libs/libshout-2.4.1-r1 | `libressl -speex -static-libs -theora`
media-libs/libvorbis-1.3.6 | `-static-libs`
media-sound/lame-3.100-r1 | `frontend -debug -mp3rtp -sndfile -static-libs`
media-sound/mpd-0.20.10 | `bzip2 eventfd fifo icu id3tag lame mad network signalfd sqlite unicode vorbis zlib -adplug -alsa -ao -audiofile -cdio -curl -debug -expat -faad -ffmpeg -flac -fluidsynth -gme -inotify -ipv6 -jack -libav -libmpdclient -libsamplerate -libsoxr -mikmod -mms -modplug -mpg123 -musepack -nfs -ogg -openal -opus -oss -pipe -pulseaudio -recorder -samba (-selinux) -sid -sndfile -soundcloud -systemd -tcpd -twolame -upnp -wavpack -webdav -wildmidi -zeroconf -zip`
sys-libs/ncurses-6.1-r2 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl** |
app-misc/ca-certificates-20180409.3.37 | `-cacert`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/libressl-2.6.5 | `asm -static-libs {-test}`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.26-r7 | `hardened -audit -caps -debug -doc -gd -headers-only (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2018d | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
