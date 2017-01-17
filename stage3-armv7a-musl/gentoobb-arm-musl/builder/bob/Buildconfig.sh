#
# build config
#
PACKAGES=""
EMERGE_BIN="emerge"

set -x 
configure_bob() {

    gcc-config 1
    # install flaggie, required for update_use() helper
    emerge app-portage/flaggie
    for i in /etc/portage/package.{accept_keywords,unmask,mask,use}; do
        if [[ -f $i ]]; then
            mv $i ${i}.old
        fi
    done
    mkdir -p /etc/portage/package.{accept_keywords,unmask,mask,use}
    for i in /etc/portage/package.{accept_keywords,unmask,mask,use}.old; do
        if [[ -f $i ]]; then
            mv ${i} ${i%.old}/default
        fi
    done
    touch /etc/portage/package.accept_keywords/flaggie
    # set locale of build container
    #echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
    # https://github.com/gliderlabs/docker-alpine/issues/144
    #locale-gen
    #echo 'LANG="en_US.UTF-8"' > /etc/env.d/02locale
    env-update
    source /etc/profile
    # install default packages
    update_use 'dev-vcs/git' '-perl'
    update_use 'app-crypt/pinentry' '+ncurses'
    emerge -v dev-vcs/git app-portage/layman
    # setup layman
    sed -i 's/^check_official : Yes/check_official : No/g' /etc/layman/layman.cfg # no pesky prompts please
    layman -L
    layman -a musl
    echo "source /var/lib/layman/make.conf" >> /etc/portage/make.conf 
    #emerge app-crypt/gnupg
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
# 
finish_rootfs_build()
{
    :
}
