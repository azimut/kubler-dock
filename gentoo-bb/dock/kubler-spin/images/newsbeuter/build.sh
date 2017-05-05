#
# build config
#

_packages="net-news/newsbeuter
           www-client/lynx"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    # last release was on 2015
    # See: https://github.com/akrennmair/newsbeuter/commits/master
    update_keywords '=net-news/newsbeuter-9999' '+**' 

    # http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html
    # The GNU Readline library provides a set of functions for use by applications
    # that allow users to edit command lines as they are typed in. 
    echo 'USE="${USE} -readline"' >> /etc/portage/make.conf
    
    # lynx - doesn't work with musl (?
    update_use 'www-client/lynx'  -nls
    update_use 'sys-libs/ncurses' +minimal
}

configure_rootfs_build()
{
    useradd -s /bin/false -U -d /home/newsbeuter -m newsbeuter
    mkdir -p ${_EMERGE_ROOT}/home/newsbeuter/.newsbeuter
    chown -R newsbeuter:newsbeuter ${_EMERGE_ROOT}/home/newsbeuter
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    # ncurses
    copy_gcc_libs
}
