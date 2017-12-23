#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="dev-ruby/nokogiri"
set -x

configure_bob()
{
    echo 'dev-db/postgresql:9.6 ~'$(portageq envvar ARCH) >> /etc/portage/package.accept_keywords/bb
    emerge -1q dev-db/postgresql:9.6
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
    # Hardcoded version for now on mainstream
    # https://github.com/fluent/fluentd-docker-image/blob/master/v0.12/alpine/Dockerfile
    su - user -s /bin/sh -c 'gem install oj -v 2.18.3 --no-ri --no-rdoc'
    su - user -s /bin/sh -c 'gem install json -v 2.1.0 --no-ri --no-rdoc'
    su - user -s /bin/sh -c 'gem install fluentd -v 0.12.42 --no-ri --no-rdoc'
    #su - user -s /bin/sh -c 'gem install fluentd -v 0.14.18 --no-ri --no-rdoc'
    su - user -s /bin/sh -c 'gem install fluent-plugin-rss --no-ri --no-rdoc'
    su - user -s /bin/sh -c 'gem install fluent-plugin-elasticsearch --no-ri --no-rdoc'
    su - user -s /bin/sh -c 'gem install fluent-plugin-sql --no-ri --no-rdoc'
    su - user -s /bin/sh -c 'gem install pg --no-ri --no-rdoc'
    su - user -s /bin/sh -c 'gem install feedjira --no-ri --no-rdoc'
    su - user -s /bin/sh -c 'gem list'

	# Install gem files to docker $ROOT
    mkdir -p ${_EMERGE_ROOT}/home/user
    cp -r /home/user/.gem  ${_EMERGE_ROOT}/home/user
    chown -R user:user  ${_EMERGE_ROOT}/home/user

    find ${_EMERGE_ROOT}/ -name '*.[hc]' -delete -print
}
