* `stage3-armv7a` files used to create a build from a stage3
* `stage3-armv7a-musl` files used to create a build from a stage3 armv7a musl hardened image

DONE:
* gcc-config hardened
* minimal ncurses
* disable sslv3 on openssl
* musl
* rtorrent-git

IN PROGRESS:
* libressl
https://forums.gentoo.org/viewtopic-p-7942264.html?sid=ce507c627ab94218a8a346421d169b72
* nodejs

TODO:
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
* capabilities
https://docs.docker.com/engine/security/security/
https://github.com/docker/docker/blob/master/oci/defaults_linux.go#L62-L77 <- WHITELIST
http://man7.org/linux/man-pages/man7/capabilities.7.html
Make a list of drop caps.
* apparmor
https://docs.docker.com/engine/security/apparmor/
