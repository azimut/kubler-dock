_packages="dev-db/redis"

configure_rootfs_build()
{
    update_keywords 'dev-db/redis' +**
}

finish_rootfs_build()
{
    # disable protected mode
    sed -i 's/^protected-mode yes/protected-mode no/g' \
        "${_EMERGE_ROOT}"/etc/redis.conf
    sed -i 's#^logfile /var/log/redis/redis.log#logfile /dev/stdout#g'\
        "${_EMERGE_ROOT}"/etc/redis.conf
}
