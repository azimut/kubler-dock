#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="
dev-qt/qtconcurrent:5
dev-qt/qtprintsupport:5
dev-qt/qtsvg:5
dev-qt/qtwidgets:5
x11-misc/xkeyboard-config"

configure_bob(){
    local repo_url=https://github.com/cutechess/cutechess
    local name=${repo_url##*/}
    [[ ! -d /distfiles/${name} ]] && ( cd /distfiles; git clone ${repo_url}; )
    [[   -d /distfiles/${name} ]] && ( cd /distfiles/${name}; git pull --rebase; )

    set +e
    emerge -j10 -vK ${_packages} || emerge -v ${_packages}
    set -e

    cd /distfiles/cutechess
    qmake -qt=qt5
    make
    strip projects/gui/cutechess
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
    mkdir -p ${_EMERGE_ROOT}/opt/
    cp /distfiles/cutechess/projects/gui/cutechess ${_EMERGE_ROOT}/opt/

    mkdir ${_EMERGE_ROOT}/engines
    cp /distfiles/Stockfish/src/stockfish ${_EMERGE_ROOT}/engines/
    strip ${_EMERGE_ROOT}/engines/stockfish
    #rsync --delete -av --exclude=.git /distfiles/cutechess \
    #    ${_EMERGE_ROOT}/opt/
}
