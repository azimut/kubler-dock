_packages="dev-db/redis"

configure_rootfs_build()
{
    update_keywords 'dev-db/redis' +**
}

finish_rootfs_build()
{
    sed -i 's#^logfile /var/log/redis/redis.log#logfile /dev/stdout#g'\
        "${_EMERGE_ROOT}"/etc/redis.conf
}
