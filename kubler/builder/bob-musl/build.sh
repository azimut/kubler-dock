#
# build config, sourced by build-root.sh inside build container
#
#_packages=""
_emerge_bin="emerge"
set -x
#
# this hook can be used to configure the build container itself, install packages, etc
#
configure_bob() {
    update-ca-certificates
    #echo 'CURRENT=x86_64-gentoo-linux-musl-4.9.4' > /etc/env.d/gcc/config-x86_64-pc-linux-musl
    eselect profile list; ls -l /etc/env.d/gcc/ ;
    ls -l /etc/portage/profile
    #gcc-config -f x86_64-gentoo-linux-musl-5.4.0;
    #source /etc/profile ; gcc-config -l
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
    emerge -C net-misc/openssh net-misc/iputils
    #update_use 'dev-libs/openssl' +bindist +tls-heartbeat

    # install default packages
    update_use 'dev-vcs/git' '-perl'
    update_use 'app-crypt/pinentry' '+ncurses'
    update_use 'app-portage/layman' '+subversion'
    update_keywords 'app-portage/layman' '+~amd64'
    update_keywords 'dev-python/ssl-fetch' '+~amd64'

    update_use 'dev-libs/glib' -mime
    update_use 'sys-apps/util-linux' -suid -cramfs -pam
    update_use 'sys-libs/ncurses' +minimal
    update_use 'net-libs/gnutls' -sslv3 -idn
    update_use 'app-shells/bash' -net
    echo 'USE="${USE} -xattr -acl -deprecated -readline -bindist -nls"' >> /etc/portage/make.conf

    emerge -1q openssl
    #emerge -1q dev-vcs/git
    revdep-rebuild -L libcrypto.so.1.0.0 -- -Dt

    #emerge dev-vcs/git app-portage/layman sys-devel/distcc app-misc/jq # TODO: rm distcc
    emerge dev-vcs/git app-portage/layman app-misc/jq # TODO: rm distcc
    #update_keywords 'app-misc/jq' '+~amd64'
    install_git_postsync_hooks
    configure_layman
    # add musl overlay, it may exist already in the shared portage container
    layman -l | grep -q musl && layman -d musl
    layman -a musl
    ## install go
    #cd ~
    #wget https://raw.githubusercontent.com/docker-library/golang/7e9aedf483dc0a035747f37af37ed260f2a6cf57/1.8/alpine/no-pic.patch
    #wget https://storage.googleapis.com/golang/go1.4-bootstrap-20161024.tar.gz
    #tar xzvf go1.4-bootstrap-20161024.tar.gz
    #mv go go1.4
    #cd go1.4/src/
    ## always seems to exit with signal 1 :/
    #set +e
    #./make.bash
    #set -e
    #export GOPATH=/go
    #cd /usr/lib
    #git clone https://go.googlesource.com/go
    #cd go/src
    #git checkout go1.8.1
    #patch -p2 -i ~/no-pic.patch
    ## always seems to exit with signal 1 :/
    #set +e
    #./all.bash
    #set -e
    #cd ../
    #ln -sr bin/go /usr/bin/
    #ln -sr bin/gofmt /usr/bin/
    ## required by acserver build
    #go install cmd/fix
    #go install cmd/cover
    #go install cmd/vet
    ## taken from alpine build
    #mkdir -p /go/src/golang.org/x/
    #cd /go/src/golang.org/x/
    #git clone https://go.googlesource.com/tools
    #for tool in "cover" "godoc" "stringer"; do
    #    go install \
    #    golang.org/x/tools/cmd/$tool || return 1
    #done
    # install aci/oci requirements
    #install_oci_deps
}
