_packages=""

configure_rootfs_build()
{
    init_docs "${NAMESPACE}/dnscrypt-proxy2"
}

finish_rootfs_build()
{
    # add user
    useradd --shell /bin/false --user-group --home-dir /home/user --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user

    mkdir -p "${_EMERGE_ROOT}"/etc
    cp -f /etc/{passwd,group} "${_EMERGE_ROOT}/etc"

    V="2.0.0beta12"
    U="https://github.com/jedisct1/dnscrypt-proxy/releases/download/${V}/dnscrypt-proxy-linux_x86_64-${V}.tar.gz"
    F="${U##*/}"
    D=${_EMERGE_ROOT}/opt/dnscrypt-proxy2/

    cd /distfiles
    [[ ! -f $F ]] && wget -c -O ${F} ${U}
    mkdir -p ${D}
    tar xvzf ${F} --strip-components=1 -C ${D}

    log_as_installed "manual install" "dnscrypt-proxy-${V}" "https://github.com/jedisct1/dnscrypt-proxy"
}
