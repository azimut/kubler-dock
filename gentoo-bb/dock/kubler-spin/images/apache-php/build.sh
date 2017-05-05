#
# build config
#

_packages="www-servers/apache dev-lang/php:7.0"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    a2m=(
      -apache2_modules_actions
      -apache2_modules_authn_anon
      -apache2_modules_dav
      -apache2_modules_dav_fs
      -apache2_modules_dav_lock
      -apache2_modules_include
      -apache2_modules_info
      -apache2_modules_speling
      -apache2_modules_userdir
    )
    update_use 'www-servers/apache'      ${a2m[@]}
    update_use 'sys-libs/ncurses'        +minimal
    update_use 'sys-apps/util-linux'     -suid -cramfs -pam
    update_use 'dev-db/postgresql'       -server
    update_use 'dev-lang/php'            +apache2 +unicode +postgres +curl -cli -phar
    update_use 'app-eselect/eselect-php' +apache2
    update_keywords 'dev-lang/php' '+**'
    echo 'USE="${USE} -xattr"' >> /etc/portage/make.conf
    # we emerge here first to skip perl after
    emerge -1q www-servers/apache dev-lang/php:7.0
}

configure_rootfs_build()
{
    # ban perl from RDEPEND (sane?
    provide_package 'dev-lang/perl'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
    # clean up
#    rm -rvf "${_EMERGE_ROOT}"/usr/lib/tmpfiles.d \
#            "${_EMERGE_ROOT}"/usr/lib/systemd \
#            "${_EMERGE_ROOT}"/etc/init.d \
#            "${_EMERGE_ROOT}"/etc/conf.d

#    find "${_EMERGE_ROOT}"/lib/ "${_EMERGE_ROOT}"/usr/lib/ -type f -name '*.[ah]' -delete -print
}
