#
# build config
#

_packages="
sys-apps/busybox
net-irc/znc
dev-python/psycopg:2"

# force native compilation
_emerge_bin="emerge"

configure_bob(){
    update_use 'net-irc/znc'       +python +daemon +sasl
    update_use 'dev-db/postgresql' -server
    update_use 'sys-apps/less'     -pcre
    update_keywords dev-libs/cyrus-sasl +**
    unprovide_package sys-apps/busybox
    # Need it on BOB to use eselect after
    emerge -1q dev-db/postgresql
}

configure_rootfs_build()
{
    # Avoid installing on ROOT eselect deps (sed,file,ncurses)
    provide_package app-admin/eselect app-eselect/eselect-postgresql
}

finish_rootfs_build()
{
    # Fails on a .pc link
    set +e
    ROOT=${_EMERGE_ROOT} eselect postgresql set 10
    set -e
    uninstall_package sys-apps/busybox
    copy_gcc_libs
    ZHOME=${_EMERGE_ROOT}/var/lib/znc/.znc/
    mkdir -p ${ZHOME}/modules
    wget -P ${ZHOME}/modules/ \
         https://raw.githubusercontent.com/azimut/zlog-sql/postgres/zlog_sql.py
}
