#
# build config, sourced by build-root.sh inside build container
#
_packages=""
_emerge_bin="emerge"
set -x
#
# this hook can be used to configure the build container itself, install packages, etc
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
    # install default packages
    update_use 'dev-vcs/git' '-perl'
    update_use 'app-crypt/pinentry' '+ncurses'
    update_keywords 'app-portage/layman' '+~arm'
    update_keywords 'dev-python/ssl-fetch' '+~arm'

    emerge dev-vcs/git app-portage/layman app-misc/jq
    install_git_postsync_hooks
    # setup layman
    sed -i 's/^check_official : Yes/check_official : No/g' /etc/layman/layman.cfg # no pesky prompts please
    layman -L
}

#
# this hook is called in the build container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
