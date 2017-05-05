#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="dev-python/lxml dev-python/pyopenssl"
#_keep_headers=true
set -x
#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    if [[ -d /distfiles/CouchPotatoServer ]]; then
        cd /distfiles/CouchPotatoServer
        git pull --rebase
    else
        cd /distfiles
        git clone https://github.com/CouchPotato/CouchPotatoServer
    fi

    mkdir -p ${_EMERGE_ROOT}/opt/CouchPotatoServer
    rsync --delete -av --exclude=.git /distfiles/CouchPotatoServer ${_EMERGE_ROOT}/opt/
}
configure_rootfs_build()
{
    :
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    :
#    mkdir -p ${_EMERGE_ROOT}/opt \
#             ${_EMERGE_ROOT}/root/.config/flexget
#    cp -ar /opt/flexget ${_EMERGE_ROOT}/opt
#
#    # cleanup
#    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
#	find ${_EMERGE_ROOT}/opt -depth \
#			\( \
#				\( -type d -a -name test -o -name tests \) \
#				-o \
#				\( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
#	        \) -print -exec rm -rf '{}' + 
}
