# start the build container in privileged mode, required for glibc. use ## to comment out
#BUILD_PRIVILEGED
# use default build container instead of bob-musl-busybox
#BUILD_FROM gentoobb-arm/bob
FROM gentoobb-arm/busybox
MAINTAINER Erik Dannenberg <erik.dannenberg@bbe-consulting.de>

ENV LANG en_US.utf8

ADD rootfs.tar /
#ADD qemu-arm-static /usr/bin/qemu-arm-static
#RUN ldconfig
