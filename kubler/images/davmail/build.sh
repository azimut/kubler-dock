_packages="sys-apps/baselayout"

set -x

configure_bob(){
    :
}

configure_rootfs_build()
{
    # add user
    useradd --shell /bin/false --user-group --home-dir /home/user --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user

    # davmail
    mkdir -p ${_EMERGE_ROOT}/opt/davmail
    tar xzf /distfiles/davmail-linux-x86_64-4.8.3-2554.tgz -C ${_EMERGE_ROOT}/opt/davmail --strip-components=1

    # add properties
    mkdir -p  ${_EMERGE_ROOT}/opt/davmail/conf
    cp /config/davmail.properties ${_EMERGE_ROOT}/opt/davmail/conf/

    chown -R user ${_EMERGE_ROOT}/opt/davmail
}

finish_rootfs_build()
{
    :
}
