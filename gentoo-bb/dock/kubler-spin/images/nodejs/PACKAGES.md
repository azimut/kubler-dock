### kubler-spin/nodejs:20170326

Built: Sat Apr  1 20:38:29 ART 2017
Image Size: 38.45 MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libuv-1.10.2 | `-static-libs`
net-libs/http-parser-2.6.2 | `-static-libs`
net-libs/nodejs-6.10.0 | `npm snapshot ssl -debug -doc -icu {-test}`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/openssl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.29.3 | `-cacert -insecure`
dev-libs/openssl-1.0.2k | `asm zlib -bindist -gmp -kerberos -rfc3779 -sctp -sslv2 -sslv3 -static-libs {-test} -tls-heartbeat -vanilla`
sys-apps/debianutils-4.7 | `-static`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`

#### Purged
- [ ] Headers
- [x] Static Libs
