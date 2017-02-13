* `stage3-armv7a` files used to create a build from a stage3
* `stage3-armv7a-musl` files used to create a build from a stage3 armv7a musl hardened image

DONE:
* gcc-config hardened
* minimal ncurses
* disable sslv3 on openssl
* musl
* rtorrent-git
* libressl
https://forums.gentoo.org/viewtopic-p-7942264.html?sid=ce507c627ab94218a8a346421d169b72

IN PROGRESS:
* nodejs
* bitlbee

TODO:
* best practices
https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/
* flood
* kubernetes
* grsecurity
* cgroups (control groups)
Set cpu, memory limits.
* rootless containers
* seccomp
https://docs.docker.com/engine/security/seccomp/ <- BLACKLIST
https://wiki.mozilla.org/Security/Sandbox/Seccomp 
grep Seccomp /proc/<pid>/status
https://github.com/docker/labs/blob/197cd96a728f17e76d56489832c3cbd892fa52d8/security/seccomp/README.md
* capabilities
https://docs.docker.com/engine/security/security/
https://github.com/docker/docker/blob/master/oci/defaults_linux.go#L62-L77 <- WHITELIST
http://man7.org/linux/man-pages/man7/capabilities.7.html
Make a list of drop caps.
* apparmor
https://docs.docker.com/engine/security/apparmor/
