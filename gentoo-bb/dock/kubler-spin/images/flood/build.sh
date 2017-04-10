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

    if [[ -d /distfiles/flood ]]; then
        cd /distfiles/flood
        git pull --rebase
    else
        cd /distfiles
        git clone https://github.com/jfurrow/flood
    fi

    mkdir -p ${_EMERGE_ROOT}/opt/flood
    rsync --delete -av --exclude=.git /distfiles/flood ${_EMERGE_ROOT}/opt/

    # dependency install
    # installation fails otherwise, running the init scripts
    cd ${_EMERGE_ROOT}/opt/flood/
    npm install --verbose --ignore-scripts geoip-country-only
    cd node_modules/geoip-country-only
    npm run-script updatedb-debug

    # Flood install
    cd ${_EMERGE_ROOT}/opt/flood/
    npm install --production --verbose
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
    log_as_installed "manual install" "flood" "https://github.com/jfurrow/flood"
}
