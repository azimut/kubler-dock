#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="dev-libs/gmp app-eselect/eselect-ruby dev-lang/ruby"
set -x

#
# This hook is called just before starting the build of the root fs
#

#configure_rootfs_build()
configure_bob()
{
    update_use 'sys-libs/ncurses' +minimal
    update_use 'dev-lang/ruby' +jemalloc -rdoc
    echo 'RUBY_TARGETS="ruby24"' >> /etc/portage/make.conf
    update_keywords 'dev-lang/ruby' '+~amd64'
    echo "dev-ruby/* ~$(portageq envvar ARCH)" >> /etc/portage/package.accept_keywords/ruby
    echo "virtual/rubygems ~$(portageq envvar ARCH)" >> /etc/portage/package.accept_keywords/ruby
    emerge ${_packages}
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{

    # already happens elsewhere ?
    ROOT=/emerge-root eselect ruby set ruby24
    find ${_EMERGE_ROOT}/ -name '*.[hc]' -delete -print
}
