#
# build config
#
_packages="media-video/mediainfo"
_emerge_bin="emerge"

set -x
configure_bob()
{
    mkdir -p /distfiles/npm-cache
    npm config set cache /distfiles/npm-cache/.npm

    local repo_url=https://github.com/jfurrow/flood
    local name=${repo_url##*/}
    [[ ! -d /distfiles/${name} ]] && ( cd /distfiles; git clone ${repo_url}; )
    [[   -d /distfiles/${name} ]] && ( cd /distfiles/${name}; git pull --rebase; )

    mkdir -p ${_EMERGE_ROOT}/opt/flood
    rsync --delete -av --exclude=.git /distfiles/flood ${_EMERGE_ROOT}/opt/

    # Flood install
    cd ${_EMERGE_ROOT}/opt/flood/
      npm install --python="/usr/bin/python2"
      SECRET="$(openssl rand -base64 64 | tr -d '\n' | rev | cut -b3-)"
      cat > config.js <<EOF
const CONFIG = {
  baseURI: '/',
  dbCleanInterval: 1000 * 60 * 60,
  dbPath: './server/db/',
  floodServerPort: 3000,
  maxHistoryStates: 30,
  pollInterval: 1000 * 5,
  secret: '${SECRET}',
  scgi: {
    host: '127.0.0.1',
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
      npm run build
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
    log_as_installed "manual install"'('"$(du -sh ${_EMERGE_ROOT}/opt/flood | cut -f1)"')' "flood" "https://github.com/jfurrow/flood"
}
