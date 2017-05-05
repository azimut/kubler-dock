#
# build config
#
_packages=""
_emerge_bin="emerge"

set -x
configure_bob()
{
    mkdir -p /distfiles/npm-cache
    npm config set cache /distfiles/npm-cache/.npm

    # Flood install
    mkdir -p ${_EMERGE_ROOT}/opt/selenium-webdriver
    cd ${_EMERGE_ROOT}/opt/selenium-webdriver
    npm install selenium-webdriver
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
    log_as_installed "npm install" "selenium-webdriver" "https://github.com/FredrikNoren/ungit"
}
