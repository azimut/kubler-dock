#
# build config
#

_packages="www-servers/apache dev-lang/php:5.6"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    local repo_url=https://github.com/RSS-Bridge/rss-bridge
    local name=${repo_url##*/}
    [[ ! -d /distfiles/${name} ]] && ( cd /distfiles; git clone ${repo_url}; )
    [[   -d /distfiles/${name} ]] && ( cd /distfiles/${name}; git pull --rebase; )
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
    p2u=(
      +apache2
      -berkdb
      +bcmath
      +bzip2
      -cli
      +crypt
      +curl
      -exif
      -flatfile
      -gdbm
      +inifile
      +mhash
      -nls
      -phar
      +pdo
      -readline
      -soap
      -sockets
      -spell
      -sqlite
      -truetype
      -wddx
      +xmlreader
      -xmlrpc
      +xmlwriter
      -xpm
      -xslt
      +zip
    )
    
    update_use 'www-servers/apache' ${a2m[@]}
    update_use 'dev-lang/php'       ${p2u[@]}

    update_use 'sys-libs/ncurses'        +minimal
    update_use 'sys-apps/util-linux'     -suid -cramfs -pam
    update_use 'app-eselect/eselect-php' +apache2

    echo 'USE="${USE} -xattr -acl -deprecated -readline"' >> /etc/portage/make.conf

    # we emerge here first to skip perl after
    emerge -1q ${_packages}
}

configure_rootfs_build()
{
    # ban perl from RDEPEND (sane?
    provide_package 'dev-lang/perl'
    provide_package 'virtual/mta'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    rsync --delete -av --exclude=.git /distfiles/rss-bridge ${_EMERGE_ROOT}/var/www/localhost/htdocs
    chown -R apache:apache ${_EMERGE_ROOT}/var/www/localhost/htdocs

    ln -sf /usr/${_LIB}/php5.6/apache2/libphp5.so \
           ${_EMERGE_ROOT}/usr/${_LIB}/apache2/modules/

    # whitelist
    cat > ${_EMERGE_ROOT}/var/www/localhost/htdocs/rss-bridge/whitelist.txt <<EOF
TwitterBridge
InstagramBridge
DuckDuckGoBridge
GoogleSearchBridge
EOF
    chown apache:apache ${_EMERGE_ROOT}/var/www/localhost/htdocs/rss-bridge/whitelist.txt
    chmod 444 ${_EMERGE_ROOT}/var/www/localhost/htdocs/rss-bridge/whitelist.txt
    find ${_EMERGE_ROOT}/var/www/localhost/htdocs/rss-bridge/bridges/ -type f \! \( -name TwitterBridge.php -o -name InstagramBridge.php -o -name DuckDuckGoBridge.php -o -name GoogleSearchBridge.php \) -delete

    # pthreads
    copy_gcc_libs

    # clean up
    rm -rvf "${_EMERGE_ROOT}"/usr/lib/tmpfiles.d \
            "${_EMERGE_ROOT}"/usr/lib/systemd \
            "${_EMERGE_ROOT}"/etc/init.d \
            "${_EMERGE_ROOT}"/etc/conf.d
    find "${_EMERGE_ROOT}"/${_LIB}/ "${_EMERGE_ROOT}"/usr/${_LIB}/ -type f -name '*.[ah]' -delete -print
}
