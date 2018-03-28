#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="
media-libs/opencv
net-proxy/torsocks
dev-python/unidecode
dev-python/psycopg:2
dev-python/pytesseract::azimut
dev-python/scrapyd::azimut"

configure_bob(){
    add_overlay azimut 'https://github.com/azimut/overlay'
    update_keywords 'dev-python/w3lib'   +~amd64
    update_keywords 'dev-python/scrapy'  +~amd64
    update_keywords 'dev-python/scrapyd' +~amd64
    update_keywords 'dev-python/numpy' +~amd64
    update_use 'dev-libs/libxml2' +python

    update_use 'dev-db/postgresql' -server -perl -python
    echo 'dev-db/postgresql:10 ~'$(portageq envvar ARCH) >> /etc/portage/package.accept_keywords/bb
    emerge -1q dev-python/scrapy dev-db/postgresql:10
}

configure_rootfs_build()
{
  # add user
    useradd --shell /bin/false \
            --user-group \
            --home-dir /home/user \
            --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user
}

finish_rootfs_build()
{
    copy_gcc_libs
    find /usr/lib64/gcc/x86_64-pc-linux-gnu -name libgomp.so.* -exec cp {} "${_EMERGE_ROOT}"/usr/lib64/ \;
    cat > ${_EMERGE_ROOT}/etc/tor/torsocks.conf <<EOF
TorAddress 127.0.0.1
TorPort 9050
OnionAddrRange 127.42.42.0/24
AllowOutboundLocalhost 1
EOF
    cat > ${_EMERGE_ROOT}/home/user/.scrapyd.conf <<EOF
[scrapyd]
http_port=6900
bind_address=0.0.0.0
EOF
    # python-cleanup
    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
    find ${_EMERGE_ROOT}/ -depth \
         \( \
         \( -type d -a -name test -o -name tests -o -name __pycache__ \) \
         -o \
         \( -type f -a -name '*.pyo' -o -name '*.pyc' -o -name '*.whl' \) \
         \) -print -exec rm -rf '{}' +
}
