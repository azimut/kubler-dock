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
    ls -l /etc/portage
    eselect profile list
    gcc-config 1
    gcc-config -c
    eselect profile set hardened/linux/musl/arm/armv7a
    # install flaggie, required for update_use() helper
    emerge app-portage/flaggie
    # migrate from files to directories at /etc/portage/package.*
    for i in /etc/portage/package.{accept_keywords,unmask,mask,use}; do
        [[ -f ${i} ]] && { cat "${i}"; mv "${i}" "${i}".old; }
        mkdir -p "${i}"
        [[ -f ${i}.old ]] &&  mv "${i}".old ${i}/default
    done
    touch /etc/portage/package.accept_keywords/flaggie
    # set locale of build container
    #echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
    # not supported with musl
    #locale-gen
    echo 'LANG="en_US.UTF-8"' > /etc/env.d/02locale
    env-update
    source /etc/profile
    # install default packages
    update_use 'dev-vcs/git' '-perl'
    update_use 'app-crypt/pinentry' '+ncurses'
    update_keywords 'app-portage/layman' '+~arm'
    update_keywords 'dev-python/ssl-fetch' '+~arm'
    update_keywords 'app-misc/jq' '+~arm'
    emerge dev-vcs/git app-portage/layman app-misc/jq app-portage/eix app-portage/gentoolkit
    # init eix portage db
    eix-update
    # setup layman
    sed -i 's/^check_official : Yes/check_official : No/g' /etc/layman/layman.cfg # no pesky prompts please
    layman -L
    layman -a musl
}

#
# this hook is called in the build container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
