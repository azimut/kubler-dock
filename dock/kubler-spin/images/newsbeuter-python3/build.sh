#
# build config
#

_packages="net-news/newsbeuter www-client/lynx"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
	# RTV
    virtualenv /opt/rtv
    source /opt/rtv/bin/activate
    mkdir -p /distfiles/pip
    pip --cache-dir=/distfiles/pip install rtv

	# LYNX
    #update_use 'sys-libs/ncurses' +minimal
    update_use 'www-client/lynx'  -nls

    # last release was on 2015
    # See: https://github.com/akrennmair/newsbeuter/commits/master
    update_keywords '=net-news/newsbeuter-9999' '+**' 

    # http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html
    # The GNU Readline library provides a set of functions for use by applications
    # that allow users to edit command lines as they are typed in. 
    #echo 'USE="${USE} -readline"' >> /etc/portage/make.conf
}

configure_rootfs_build()
{
    # add user
    useradd --shell /bin/false --user-group --home-dir /home/user --create-home user
    mkdir -p ${_EMERGE_ROOT}/home/user
    chown -R user:user ${_EMERGE_ROOT}/home/user
}

finish_rootfs_build()
{
    # LYNX
    # ncurses 
    #copy_gcc_libs

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
browser "lynx -accept_all_cookies %u"
cache-file ~/.newsbeuter/cache.db
cleanup-on-quit no
confirm-exit yes
reload-threads 1
reload-time 60
suppress-first-reload yes
EOF

    chown -R user ${_EMERGE_ROOT}/home/user/

    mkdir -p ${_EMERGE_ROOT}/opt
    mkdir -p ${_EMERGE_ROOT}/etc/env.d/
    echo 'PATH="/opt/rtv/bin"' > ${_EMERGE_ROOT}/etc/env.d/99venv
    cp -r /opt/rtv ${_EMERGE_ROOT}/opt
    # python-cleanup
    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
	find ${_EMERGE_ROOT}/ -depth \
			\( \
				\( -type d -a -name test -o -name tests -o -name testing \) \
				-o \
				\( -type f -a -name '*.pyo' -o -name '*.pyc' -o -name '*.whl' \) \
	        \) -print -exec rm -rf '{}' + 
}
