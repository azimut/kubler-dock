_packages=""

configure_rootfs_build()
{
    init_docs "${NAMESPACE}/matterbridge"

    # add user
    useradd --shell /bin/false --user-group --home-dir /home/user --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user
}

finish_rootfs_build()
{

#    mkdir -p "${_EMERGE_ROOT}"/etc
#    cp -f /etc/{passwd,group} "${_EMERGE_ROOT}/etc"

    V="v1.7.1"
    D=${_EMERGE_ROOT}/opt/matterbridge/

    cd /distfiles
    mkdir -p ${D}

    U="https://github.com/42wim/matterbridge/releases/download/${V}/matterbridge-linux-amd64"
    F="${U##*/}"
    [[ ! -f $F ]]  && wget -c ${U}
    cp -v ${F} ${D}
    chmod +x ${D}/${F}

    U=https://raw.githubusercontent.com/42wim/matterbridge/${V}/matterbridge.toml.sample
    F="${U##*/}"
    [[ ! -f $F ]]  && wget -c ${U}
    cp -v ${F} ${D}

    U=https://raw.githubusercontent.com/42wim/matterbridge/${V}/matterbridge.toml.simple
    F="${U##*/}"
    [[ ! -f $F ]]  && wget -c ${U}
    cp -v ${F} ${D}

    chown user:user ${D}/*

    log_as_installed "manual install" "matterbridge-${V}" "https://github.com/42wim/matterbridge"
}
