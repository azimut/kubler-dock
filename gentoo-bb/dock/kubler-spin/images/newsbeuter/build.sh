#
# build config
#

_packages="net-news/newsbeuter"

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
}

configure_rootfs_build()
{
    :
}

finish_rootfs_build()
{
    mkdir -p ${_EMERGE_ROOT}/home/user/.newsbeuter/
    cat > ${_EMERGE_ROOT}/home/user/.newsbeuter/urls <<EOF
https://github.com/EionRobb/skype4pidgin/commits/master.atom "kubler"
https://github.com/Flexget/Flexget/commits/develop.atom "kubler"
https://github.com/akrennmair/newsbeuter/commits/master.atom "kubler"
https://github.com/edannenberg/kubler/commits/master.atom "kubler"
https://github.com/wee-slack/wee-slack/commits/master.atom "kubler"
EOF
    cat > ${_EMERGE_ROOT}/home/user/.newsbeuter/config <<EOF
auto-reload yes
browser lynx
cache-file ~/.newsbeuter/cache.db
cleanup-on-quit no
confirm-exit yes
reload-threads 1
reload-time 60
suppress-first-reload yes
EOF
    chown -R user ${_EMERGE_ROOT}/home/user/
}
