#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="games-board/pychess"
#_keep_headers=true

#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    update_use dev-libs/glib -mime -xattr
    update_use 'sys-apps/util-linux' -suid -cramfs -pam
    echo 'USE="${USE} -readline"' >> /etc/portage/make.conf
    #
    # END
    #
    echo 'USE="${USE} -acl"' >> /etc/portage/make.conf
    update_use x11-libs/gtk+ +X
    update_use x11-libs/cairo +X
    update_use media-libs/libepoxy +X
    update_use dev-libs/libxml2 +python

    # https://bugs.gentoo.org/show_bug.cgi?id=611030
    # /usr/bin/gtk-query-immodules-3.0
    set +e
    #emerge -1qK x11-libs/gtk+:2
    emerge -j15 -1qK x11-libs/gtk+:3
    set -e

    local repo_url=https://github.com/ddugovic/Stockfish
    local name=${repo_url##*/}
    [[ ! -d /distfiles/${name} ]] && ( cd /distfiles; git clone ${repo_url}; )
    [[   -d /distfiles/${name} ]] && ( cd /distfiles/${name}; git pull --rebase; )
    # make build ARCH=x86-64
   
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
    # Stockfish
    copy_gcc_libs

    sed -i 's#application/x-ms-dos-executable#application/x-sharedlib#g' \
           ${_EMERGE_ROOT}/usr/lib/python2.7/site-packages/pychess/widgets/enginesDialog.py
    #  filter.add_pattern("*.exe")   
    #  filter.add_pattern("*")   

    mkdir ${_EMERGE_ROOT}/engines
    cp /distfiles/Stockfish/src/stockfish ${_EMERGE_ROOT}/engines/
    strip ${_EMERGE_ROOT}/engines/stockfish

    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
	find ${_EMERGE_ROOT}/usr -depth \
			\( \
				\( -type d -a -name test -o -name tests -o -name testing \) \
				-o \
				\( -type f -a -name '*.pyo' -o -name '*.pyc' \) \
	        \) -print -exec rm -rf '{}' + 
}
