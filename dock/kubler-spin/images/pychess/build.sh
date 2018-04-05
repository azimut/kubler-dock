#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="games-board/stockfish::azimut
games-board/pychess
games-board/gnuchess
games-board/gnuchess-book
games-board/crafty"
#_keep_headers=true

#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    # Stockfish
    add_overlay azimut https://github.com/azimut/overlay
    
    update_use dev-libs/glib +mime
    update_use x11-libs/gtk+ +X
    update_use x11-libs/cairo +X
    update_use media-libs/libepoxy +X
    update_use dev-libs/libxml2 +python

    # https://bugs.gentoo.org/show_bug.cgi?id=611030
    # /usr/bin/gtk-query-immodules-3.0
    set +e
    emerge -1q x11-libs/gtk+:3
    set -e

}
configure_rootfs_build()
{
    unprovide_package dev-lang/python
    update_use 'dev-lang/python' +readline +ncurses
     # add user
    useradd --shell /bin/false \
            --user-group \
            --home-dir /home/user \
            --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user
    # games.eclass - needs bash on ROOT otherwise
    echo 'GAMES_USER=user' >> /etc/portage/make.conf
    echo 'GAMES_USER_DED=user' >> /etc/portage/make.conf
    echo 'games-board/* ~amd64' > /etc/portage/package.accept_keywords/games
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    # Stockfish
    copy_gcc_libs

    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
    find ${_EMERGE_ROOT}/ -depth \
	 \( \
	 \( -type d -a -name test -o -name tests -o -name testing \) \
	 -o \
	 \( -type f -a -name '*.pyo' -o -name '*.pyc' \) \
	 \) -print -exec rm -rf '{}' + 
}
