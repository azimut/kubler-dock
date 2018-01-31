#
# build config
#
_packages=""

_emerge_bin="emerge"

configure_bob(){
    local repo_url=https://github.com/citusdata/citus
    local name=${repo_url##*/}
    [[ ! -d /distfiles/${name} ]] && ( cd /distfiles; git clone ${repo_url}; )
    [[   -d /distfiles/${name} ]] && ( cd /distfiles/${name}; git pull --rebase; )

    unprovide_package dev-db/postgresql
    emerge -1q dev-db/postgresql

    mkdir -p ${_EMERGE_ROOT}

    cd /distfiles/${name}
    ./configure
    make
    make install DESTDIR=${_EMERGE_ROOT}
}

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    :
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    log_as_installed "manual install" "citus" "https://github.com/citusdata/citus"
    find "${_EMERGE_ROOT}"/ -type f -name '*.[ah]' -delete -print
}
