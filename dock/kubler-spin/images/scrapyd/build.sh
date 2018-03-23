#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="
media-libs/opencv
dev-python/pytesseract::azimut
dev-python/scrapyd::azimut"

configure_bob(){
    add_overlay azimut 'https://github.com/azimut/overlay'
    update_keywords 'dev-python/w3lib'   +~amd64
    update_keywords 'dev-python/scrapy'  +~amd64
    update_keywords 'dev-python/scrapyd' +~amd64
    update_use 'dev-libs/libxml2' +python
    emerge -1q dev-python/scrapy
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
    # python-cleanup
    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
    find ${_EMERGE_ROOT}/ -depth \
         \( \
         \( -type d -a -name test -o -name tests -o -name testing -o -name __pycache__ \) \
         -o \
         \( -type f -a -name '*.pyo' -o -name '*.pyc' -o -name '*.whl' \) \
         \) -print -exec rm -rf '{}' +
}
