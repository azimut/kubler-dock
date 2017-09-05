# needs emacs25
_packages="
dev-lisp/sbcl
app-emacs/slime
=virtual/emacs-25"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    # add projects
    for r in https://github.com/byulparan/cl-collider \
             https://github.com/byulparan/scheduler; do
        local repo_url="${r}"
        local name=${repo_url##*/}
        [[ ! -d /distfiles/${name} ]] && ( cd /distfiles; git clone ${repo_url}; )
        [[   -d /distfiles/${name} ]] && ( cd /distfiles/${name}; git pull --rebase; )
        mkdir -p ${_EMERGE_ROOT}/root/quicklisp/local-projects
        rsync --delete -av --exclude=.git /distfiles/${name} ${_EMERGE_ROOT}/root/quicklisp/local-projects
    done

    update_keywords app-emacs/slime '+**'

    # needed or some emacs detection
    emerge -v --with-bdeps=y --deep -K -j15 ${_packages} || emerge -v -k --with-bdeps=y --deep ${_packages}
}

configure_rootfs_build()
{
    :
}

finish_rootfs_build(){
    # slime needs this
    ln -sf /usr/bin/sbcl \
          ${_EMERGE_ROOT}/usr/bin/lisp
}
