#
# build config
#
PACKAGES=""
EMERGE_BIN="emerge"

set -x 

configure_bob() {
    gcc-config 1
    source /etc/profile
    env-update
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
	#update_keywords '=dev-libs/libressl-2.5.0' '+~arm'

# libressl
# https://wiki.gentoo.org/wiki/Project:LibreSSL
echo 'USE="${USE} libressl"'   >> /etc/portage/make.conf 
echo "-libressl"               >> /etc/portage/profile/use.stable.mask 
echo "-curl_ssl_libressl"      >> /etc/portage/profile/use.stable.mask 
echo "dev-libs/openssl"        >> /etc/portage/package.mask/openssl
echo "=dev-libs/libressl-2.4*" >> /etc/portage/package.accept_keywords/libressl
emerge -f libressl 
emerge -C openssh
emerge -C openssl 
armv7a-hardfloat-linux-musleabi-gcc --version
env
set
emerge -v --info
emerge --info
emerge -1q libressl
emerge -1q wget

echo "=dev-lang/python-2.7.12"              >> /etc/portage/package.accept_keywords/python
echo "=dev-lang/python-3.4.5"               >> /etc/portage/package.accept_keywords/python
echo "=app-eselect/eselect-python-20160222" >> /etc/portage/package.accept_keywords/eselect-python
echo "=dev-lang/python-exec-2.4.3"          >> /etc/portage/package.accept_keywords/python-exec
emerge -1q =dev-lang/python-2.7.12 =dev-lang/python-3.4.5

    # install default packages
    update_use 'dev-vcs/git' '-perl' '+libressl'
    update_use 'app-crypt/pinentry' '+ncurses'
    update_use 'net-misc/curl' '+curl_ssl_libressl' '-curl_ssl_openssl'
    emerge -1v net-misc/curl
    emerge -v dev-vcs/git

#echo "=net-misc/iputils-20121221-r2" >> /etc/portage/package.accept_keywords/iputils
#emerge -1q =net-misc/iputils-20121221-r2
#emerge -q @preserved-rebuild

    emerge -v app-portage/layman
    env-update
    source /etc/profile
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
