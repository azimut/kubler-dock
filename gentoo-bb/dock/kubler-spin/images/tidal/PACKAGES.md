### kubler-spin/tidal:20170423

Built: Mon May  8 22:11:24 ART 2017
Image Size: 412.4 MB

#### Installed
Package | USE Flags
--------|----------
app-admin/haskell-updater-1.2.10 | ``
app-arch/bzip2-1.0.6-r7 | `-static -static-libs`
dev-haskell/attoparsec-0.13.1.0 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/base64-bytestring-1.0.0.1 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/binary-0.8.3.0 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/blaze-builder-0.4.0.2 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/bytestring-builder-0.10.8.1.0 | `(-profile)`
dev-haskell/case-insensitive-1.2.0.9 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/colour-2.3.3-r1 | `-doc -hoogle -hscolour (-profile)`
dev-haskell/data-binary-ieee754-0.4.4 | `-doc -hoogle -hscolour (-profile)`
dev-haskell/entropy-0.3.7 | `-doc -halvm -hoogle -hscolour (-profile)`
dev-haskell/fail-4.9.0.0 | `(-profile)`
dev-haskell/hashable-1.2.6.0 | `-doc -examples -hoogle -hscolour (-profile) {-test}`
dev-haskell/hosc-0.15 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/integer-logarithms-1.0.1 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/mersenne-random-pure64-0.2.2.0 | `-doc -hoogle -hscolour (-profile)`
dev-haskell/mtl-2.2.1-r1 | `-doc -hoogle -hscolour (-profile)`
dev-haskell/nats-1.1.1 | `binary hashable template-haskell (-profile)`
dev-haskell/network-2.6.3.1-r1 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/parsec-3.1.11 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/primitive-0.6.1.0-r1 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/random-1.1 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/safe-0.3.14 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/scientific-0.3.4.12 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/semigroups-0.18.3 | `binary transformers -doc -hoogle -hscolour (-profile)`
dev-haskell/sha-1.6.4.2 | `-doc -exe -hoogle -hscolour (-profile) {-test}`
dev-haskell/tagged-0.8.5 | `-doc -hoogle -hscolour (-profile)`
dev-haskell/text-1.2.2.1 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/tidal-0.9.3 | `-doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/transformers-0.5.2.0 | `-doc -hoogle -hscolour (-profile)`
dev-haskell/transformers-compat-0.5.1.4 | `-doc -hoogle -hscolour (-profile)`
dev-haskell/unordered-containers-0.2.8.0 | `-debug -doc -hoogle -hscolour (-profile) {-test}`
dev-haskell/vector-0.11.0.0 | `boundschecks -doc -hoogle -hscolour -internalchecks (-profile) {-test} -unsafechecks`
dev-haskell/websockets-0.9.7.0 | `-doc -examples -hoogle -hscolour (-profile) {-test}`
dev-lang/ghc-8.0.2 | `binary gmp -doc -ghcbootstrap -ghcmakebinary (-profile)`
dev-lang/perl-5.24.1-r1 | `berkdb -debug -doc -gdbm -ithreads`
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/libffi-3.2.1 | `pax`
perl-core/File-Temp-0.230.400-r1 | ``
sys-libs/db-5.3.28-r2 | `cxx -doc -examples -java -tcl {-test}`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
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
