FROM gentoobb-arm/stage3-import
MAINTAINER Erik Dannenberg <erik.dannenberg@bbe-consulting.de>

COPY qemu-arm-static /usr/bin/qemu-arm-static

RUN echo 'GENTOO_MIRRORS="http://distfiles.gentoo.org/"' >> /etc/portage/make.conf && \
    mkdir -p /etc/portage/repos.conf /usr/portage && \
    sed -e 's|^sync-uri =.*|sync-uri = rsync://rsync.europe.gentoo.org/gentoo-portage|' \
        -e 's|^sync-type =.*|sync-type = rsync|' \
        /usr/share/portage/config/repos.conf > /etc/portage/repos.conf/gentoo.conf && \
    chown -R portage:portage /usr/portage && \
    emerge-webrsync -k && \
    eselect news read new 1>/dev/null && \
    mkdir -p /etc/portage/profile && \
    if [[ false == "true" ]]; then emerge --sync; else true; fi

COPY make.conf /etc/portage/make.conf

COPY portage-defaults.sh /etc/profile.d/portage-defaults.sh

COPY build-root.sh /bin/build-root

CMD ["/bin/bash"]
