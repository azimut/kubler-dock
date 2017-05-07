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
      npm install --ignore-scripts geoip-country-only
    cd node_modules/geoip-country-only
      npm run-script updatedb-debug

    # Flood install
    cd ${_EMERGE_ROOT}/opt/flood/
      npm install --production
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
    # This might not work if you change your db.
    SECRET="$(openssl rand -base64 64 | tr -d '\n' | rev | cut -b3-)"

    cat > ${_EMERGE_ROOT}/opt/flood/config.js <<EOF
const CONFIG = {
  baseURI: '/',
  dbCleanInterval: 1000 * 60 * 60,
  dbPath: './server/db/',
  floodServerPort: 3000,
  maxHistoryStates: 30,
  pollInterval: 1000 * 5,
  secret: '${SECRET}',
  scgi: {
    host: 'rtorrent',
    port: 5000,
    socket: false,
    socketPath: '/tmp/rtorrent.sock'
  },
  ssl: false,
  sslKey: '/absolute/path/to/key/',
  sslCert: '/absolute/path/to/certificate/'
};

module.exports = CONFIG;
EOF
    log_as_installed "manual install"'('"$(du -sh ${_EMERGE_ROOT}/opt/flood | cut -f1)"')' "flood" "https://github.com/jfurrow/flood"
}
