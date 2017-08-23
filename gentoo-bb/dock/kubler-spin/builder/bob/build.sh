#
# Kubler phase 1 config, pick installed packages and/or customize the build
#

#
# This hook can be used to configure the build container itself, install packages, run any command, etc
#
configure_bob() {
    fix_portage_profile_symlink
    # install basics used by helper functions
    emerge app-portage/flaggie app-portage/eix app-portage/gentoolkit
    configure_eix
    mkdir -p /etc/portage/package.{accept_keywords,unmask,mask,use}
    touch /etc/portage/package.accept_keywords/flaggie
    # set locale of build container
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
    locale-gen
    echo 'LANG="en_US.UTF-8"' > /etc/env.d/02locale
    env-update
    source /etc/profile

    update_use 'sys-apps/util-linux' -suid -cramfs -pam
    update_use 'sys-libs/ncurses' +minimal
    update_use 'net-libs/gnutls' -sslv3 -idn
    update_use 'app-shells/bash' -net
    update_use 'dev-libs/glib' -mime
    echo 'USE="${USE} -xattr -acl -deprecated -readline -bindist -nls"' >> /etc/portage/make.conf
    # install default packages
    update_use 'dev-vcs/git' '-perl'
    update_use 'app-portage/layman' '+subversion'
    update_use 'app-crypt/pinentry' '+ncurses'
    update_keywords 'app-portage/layman' '+~amd64'
    update_keywords 'dev-python/ssl-fetch' '+~amd64'
    #emerge dev-vcs/git app-portage/layman sys-devel/distcc app-misc/jq
    emerge dev-vcs/git app-portage/layman app-misc/jq
    install_git_postsync_hooks
    configure_layman
    # install aci/oci requirements
    #emerge dev-lang/go
    #install_oci_deps
}
