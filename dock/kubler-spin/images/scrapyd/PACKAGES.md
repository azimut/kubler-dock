### kubler-spin/scrapyd:20180227

Built: Fri Mar 30 02:07:26 EDT 2018
Image Size: 148MB

#### Installed
Package | USE Flags
--------|----------
app-admin/eselect-1.4.11 | `-doc -emacs -vim-syntax`
app-eselect/eselect-postgresql-2.3 | ``
app-misc/editor-wrapper-4 | ``
app-text/tesseract-3.05.01 | `-doc -examples -jpeg -math -opencl -osd -png -scrollview -static-libs -tiff -training -webp`
dev-cpp/tbb-2017.20161128 | `-debug -doc -examples`
dev-db/postgresql-10.3 | `libressl ssl threads zlib -doc -kerberos -ldap -nls -pam -perl -python -readline (-selinux) -server -static-libs -systemd -tcl -uuid -xml`
dev-lang/python-exec-2.4.5 | ` `
dev-libs/gmp-6.1.2 | `asm cxx -doc -pgo -static-libs`
dev-libs/libgcrypt-1.8.1 | `-doc -static-libs`
dev-libs/libgpg-error-1.27-r1 | `-common-lisp -nls -static-libs`
dev-libs/libpcre-8.41-r1 | `bzip2 cxx recursion-limit (unicode) zlib -jit -libedit -pcre16 -pcre32 -readline -static-libs`
dev-libs/libxml2-2.9.7 | `python -debug -examples -icu -ipv6 -lzma -readline -static-libs {-test}`
dev-libs/libxslt-1.1.30-r2 | `crypt -debug -examples -python -static-libs`
dev-python/asn1crypto-0.22.0 | `{-test}`
dev-python/attrs-16.3.0-r1 | `{-test}`
dev-python/certifi-2017.4.17 | ` `
dev-python/cffi-1.9.1 | `-doc {-test}`
dev-python/cryptography-2.0.2-r1 | `libressl {-test}`
dev-python/cssselect-0.9.1 | `-doc {-test}`
dev-python/enum34-1.1.6 | `-doc`
dev-python/idna-2.5 | ` `
dev-python/ipaddress-1.0.18 | ` `
dev-python/lxml-3.8.0 | `threads -doc -examples {-test}`
dev-python/numpy-1.13.3 | `-doc -lapack {-test}`
dev-python/pillow-3.4.2-r1 | `zlib -doc -examples -jpeg -jpeg2k -lcms {-test} -tiff -tk -truetype -webp`
dev-python/ply-3.9 | `-examples`
dev-python/psycopg-2.7.3 | `-debug -doc -examples`
dev-python/pyasn1-0.2.3 | `-doc`
dev-python/pyasn1-modules-0.0.8 | ` `
dev-python/pycparser-2.14 | `{-test}`
dev-python/pycrypto-2.6.1-r2 | `gmp -doc {-test}`
dev-python/pyopenssl-17.2.0 | `-doc -examples {-test}`
dev-python/pytesseract-0.2.1 | ` `
dev-python/queuelib-1.1.1 | `{-test}`
dev-python/scrapy-1.0.3 | `ssl -boto -doc -ibl {-test}`
dev-python/scrapyd-1.2.0 | `-doc`
dev-python/service_identity-17.0.0-r1 | `-doc {-test}`
dev-python/setuptools-36.7.2 | `{-test}`
dev-python/six-1.10.0 | `-doc {-test}`
dev-python/twisted-conch-13.2.0 | ` `
dev-python/twisted-core-13.2.0 | `crypt -gtk -serial`
dev-python/twisted-mail-13.2.0 | ` `
dev-python/twisted-names-13.2.0 | ` `
dev-python/twisted-web-13.2.0 | `-soap`
dev-python/unidecode-0.04.20 | ` `
dev-python/w3lib-1.18.0 | ` `
dev-python/zope-interface-4.3.2 | `{-test}`
media-libs/leptonica-1.74.4 | `zlib -gif -jpeg -jpeg2k -png -static-libs {-test} -tiff -utils -webp`
media-libs/opencv-2.4.13-r3 | `eigen openmp python threads (-cuda) -examples -ffmpeg -gstreamer -gtk -ieee1394 (-ipp) -java -jpeg -jpeg2k -libav -opencl -openexr -opengl (-pch) -png -qt5 -testprograms -tiff -v4l (-vtk) -xine`
net-proxy/tsocks-1.8_beta5-r8 | `-dns -envconf -server-lookups -tordns`
sys-apps/attr-2.4.47-r2 | `-nls -static-libs`
sys-apps/coreutils-8.28-r1 | `(xattr) -acl -caps -gmp -hostname -kill -multicall -nls (-selinux) -static {-test} -vanilla`
sys-apps/file-5.32 | `zlib -python -static-libs`
sys-apps/less-529 | `pcre unicode`
sys-apps/sed-4.2.2 | `-acl -nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/python2-glibc** |
app-arch/bzip2-1.0.6-r8 | `-static -static-libs`
app-misc/mime-types-9 | ``
dev-db/sqlite-3.22.0 | `-debug -doc -icu -readline -secure-delete -static-libs -tcl {-test} -tools`
dev-lang/python-2.7.14-r1 | `hardened libressl sqlite ssl (threads) (wide-unicode) xml (-berkdb) -build -doc -examples -gdbm -ipv6 -ncurses -readline -tk -wininst`
dev-libs/expat-2.2.5 | `unicode -examples -static-libs`
dev-libs/libffi-3.2.1 | `-debug -pax`
sys-libs/zlib-1.2.11-r1 | `-minizip -static-libs`
**FROM kubler-spin/libressl** |
app-misc/ca-certificates-20170717.3.36 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.8.3 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.12 | ``
sys-libs/glibc-2.25-r10 | `hardened rpc -audit -caps -debug -gd -headers-only (-multilib) -nscd (-profile) (-selinux) -suid -systemtap (-vanilla)`
sys-libs/timezone-data-2017c | `-leaps`
**FROM kubler-spin/busybox** |
sys-apps/busybox-1.28.0 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
