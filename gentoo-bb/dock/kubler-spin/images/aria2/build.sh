#
# build config
#

_packages="net-misc/aria2"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    update_keywords 'net-misc/aria2' '+**'
    update_use 'net-misc/aria2'   -nls +xmlrpc
    update_use 'sys-libs/ncurses' +minimal
    update_use 'dev-scheme/guile' -deprecated
    echo 'USE="${USE} -readline"' >> /etc/portage/make.conf
}

configure_rootfs_build()
{
    :
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    copy_gcc_libs
    # this will change on each iteration, so just make sure you override the parameters
    # CMD of this image with your own
    SECRET="$(openssl rand -base64 64 | tr -d '\n' | rev | cut -b3-)"
    mkdir -p ${_EMERGE_ROOT}/etc \
             ${_EMERGE_ROOT}/data
    cat > ${_EMERGE_ROOT}/etc/aria2.conf <<EOF
dir=/opt
disable-ipv6=true

log-level=warn
log=-

enable-rpc=true
rpc-allow-origin-all=true
rpc-listen-all=true
rpc-listen-port=6800
rpc-secret=${SECRET}
#rpc-secure=true
EOF
    # clean up
    rmdir=(
      /usr/share/autogen
      /usr/share/bash-completion
      /usr/share/guile
    )
    rm -rvf ${rmdir[@]/#/${_EMERGE_ROOT}}

#    find "${_EMERGE_ROOT}"/lib/ "${_EMERGE_ROOT}"/usr/lib/ -type f -name '*.[ah]' -delete -print
}
