#
# build config
#
PACKAGES=""
EMERGE_BIN="emerge"

set -x 

configure_bob() {
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
    emerge -1q libressl
    emerge -1q wget
    
    echo "=dev-lang/python-2.7.12"              >> /etc/portage/package.accept_keywords/python
    echo "=dev-lang/python-3.4.5"               >> /etc/portage/package.accept_keywords/python
    echo "=app-eselect/eselect-python-20160222" >> /etc/portage/package.accept_keywords/eselect-python
    echo "=dev-lang/python-exec-2.4.3"          >> /etc/portage/package.accept_keywords/python-exec
    emerge -1q =dev-lang/python-2.7.12 =dev-lang/python-3.4.5

    # install default packages
    update_use 'dev-vcs/git' '-perl' '+libressl'
    update_use 'net-misc/curl' '+curl_ssl_libressl' '-curl_ssl_openssl'
    emerge -1v net-misc/curl
    emerge -v dev-vcs/git

    emerge -q @preserved-rebuild
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
# 
finish_rootfs_build()
{
    :
}
