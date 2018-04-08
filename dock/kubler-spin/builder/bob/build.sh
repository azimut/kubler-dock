#
# Kubler phase 1 config, pick installed packages and/or customize the build
#

#
# This hook can be used to configure the build container itself, install packages, run any command, etc
#
set -x
configure_bob() {
    ls -l /usr/local/share/ca-certificates
    update-ca-certificates
    fix_portage_profile_symlink
    emerge -C net-misc/openssh net-misc/iputils
    # install basics used by helper functions
    emerge app-portage/flaggie app-portage/eix app-portage/gentoolkit
    configure_eix
    # migrate from files to directories at /etc/portage/package.*
    for i in /etc/portage/package.{accept_keywords,unmask,mask,use}; do
        [[ -f "${i}" ]] && { cat "${i}"; mv "${i}" "${i}".old; }
        mkdir -p "${i}"
        [[ -f "${i}".old ]] &&  mv "${i}".old "${i}"/default
    done
    touch /etc/portage/package.accept_keywords/flaggie
    # set locale of build container
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
    locale-gen
    echo 'LANG="en_US.UTF-8"' > /etc/env.d/02locale
    env-update
    source /etc/profile

    # install default packages
    update_use 'dev-vcs/git' '-perl'
    update_use 'app-crypt/pinentry' '+ncurses'
    update_use 'app-portage/layman' '+subversion'
    update_use 'dev-libs/libpcre2' +jit
    update_keywords 'app-portage/layman' '+~'$(portageq envvar ARCH)
    update_keywords 'dev-python/ssl-fetch' '+~'$(portageq envvar ARCH)

    update_use 'dev-libs/glib' -mime
    update_use 'sys-apps/less' -pcre
    update_use 'sys-apps/util-linux' -suid -cramfs -pam
    update_use 'sys-libs/ncurses' +minimal
    update_use 'net-libs/gnutls' -sslv3 -idn
    update_use 'app-shells/bash' -net

    # http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html
    # The GNU Readline library provides a set of functions for use by applications
    # that allow users to edit command lines as they are typed in. 
    echo 'USE="${USE} -xattr -acl -deprecated -readline -bindist -nls"' >> /etc/portage/make.conf
    emerge dev-vcs/git app-portage/layman app-misc/jq
    install_git_postsync_hooks
    configure_layman
    # install aci/oci requirements
    #emerge dev-lang/go
    #install_oci_deps
}
