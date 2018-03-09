_packages="
dev-vcs/git
net-dns/avahi
=virtual/emacs-24"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    update_use net-dns/avahi +dbus
    # add projects
    for r in https://github.com/overtone/emacs-live ; do
        local repo_url="${r}"
        local name=${repo_url##*/}
        [[ ! -d /distfiles/${name} ]] && ( cd /distfiles; git clone ${repo_url}; )
        [[   -d /distfiles/${name} ]] && ( cd /distfiles/${name}; git pull --rebase; )
        mkdir -p ${_EMERGE_ROOT}/root/quicklisp/local-projects
        rsync --delete -av --exclude=.git /distfiles/${name}/* ${_EMERGE_ROOT}/root/.emacs.d/
    done

    # needed or some emacs detection
    emerge -v =virtual/emacs-24
    #emerge -v --with-bdeps=y --deep -K -j15 ${_packages} || emerge -v -k --with-bdeps=y --deep ${_packages}
}

configure_rootfs_build()
{
    :
}

finish_rootfs_build(){
    :
}
