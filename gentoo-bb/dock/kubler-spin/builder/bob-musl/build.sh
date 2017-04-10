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
    #echo 'CURRENT=x86_64-gentoo-linux-musl-4.9.4' > /etc/env.d/gcc/config-x86_64-pc-linux-musl
    eselect profile list; ls -l /etc/env.d/gcc/ ; gcc-config -f x86_64-gentoo-linux-musl-4.9.4; source /etc/profile ; gcc-config -l
    # eselect profile set hardened/linux/musl/arm/armv7a
    fix_portage_profile_symlink
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
    echo 'LANG="en_US.UTF-8"' > /etc/env.d/02locale
    env-update
    source /etc/profile
    # install default packages
    update_use 'dev-vcs/git' '-perl'
    update_use 'app-crypt/pinentry' '+ncurses'
    update_keywords 'app-portage/layman' '+~amd64'
    update_keywords 'dev-python/ssl-fetch' '+~amd64'
    #update_keywords 'app-misc/jq' '+~amd64'

    emerge dev-vcs/git app-portage/layman app-misc/jq
    install_git_postsync_hooks
    configure_layman
    # add musl overlay, it may exist already in the shared portage container
    layman -l | grep -q musl && layman -d musl
    layman -a musl
}

#
# this hook is called in the build container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
