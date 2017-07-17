#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_php_slot="7.1"
_php_target="php${_php_slot/\./-}"
_zend_api="20160303"
_packages="dev-lang/php media-gfx/imagemagick"
_php_timezone="${BOB_TIMEZONE:-UTC}"

configure_bob()
{
    echo "PHP_TARGETS=\"${_php_target}\"" >> /etc/portage/make.conf
    echo 'PHP_INI_VERSION="production"' >> /etc/portage/make.conf
    echo "-php_targets_${_php_target}" >> /etc/portage/profile/use.mask

    update_keywords 'dev-lang/php' '+~amd64'
    update_use 'sys-libs/ncurses' '+minimal'

    #update_use '+gif' '+jpeg' '+jpeg2k' '+png' '+tiff' '+webp'
    echo 'USE="${USE} tiff gif webp jpeg png jpeg2k"' >> /etc/portage/make.conf
    update_use 'dev-lang/php' '+bcmath' '+calendar' '+curl' '+fpm' '+mhash' \
                              '+mysql' '+mysqli' '+pcntl' '+pdo' '+soap' \
                              '+sockets' '+webp' '+xmlreader' '+xmlrpc' \
                              '+xmlwriter' '+xslt' '+zip' '+opcache'
    # flaggie issue with gd use flag, apparently there now is a conflicting license with the same name
    echo 'dev-lang/php gd' >> /etc/portage/package.use/php
    update_use 'app-eselect/eselect-php' '+fpm'
    update_use 'media-gfx/imagemagick' '-openmp'
    emerge php imagemagick
}

#
# This hook is called just before starting the build of the root fs
#
configure_rootfs_build()
{
    # skip bash, perl, autogen. pulled in as dep since php 5.5.22
    provide_package app-shells/bash dev-lang/perl sys-devel/autogen
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    # set php time zone
    sed -i "s@^;date.timezone =@date.timezone = $_php_timezone@g" "${fpm_php_ini}"
    # use above changes also for php cli config
    cp "${fpm_php_ini}" "${_EMERGE_ROOT}"/etc/php/cli-php"${_php_slot}"/php.ini
    # required by null-mailer
    #copy_gcc_libs
    #chmod 0640 "${_EMERGE_ROOT}"/etc/nullmailer/remotes
    # apparently a bug with nullmailer? links to non existing gnutls lib
    #ln -sr "${_EMERGE_ROOT}"/usr/lib64/libgnutls.so.28 "${_EMERGE_ROOT}"/usr/lib64/libgnutls.so.26
    # required by imagick
    #find /usr/lib64/gcc/x86_64-pc-linux-gnu -name libgomp.so.* -exec cp {} "${_EMERGE_ROOT}"/usr/lib64/ \;
}
