# If we do not set 1 version of ghc it tries to install 2 diff versions...
_packages="
dev-haskell/tidal
=dev-lang/ghc-8.0.1::haskell
=virtual/emacs-24
app-emacs/haskell-mode
sys-devel/gcc"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    add_overlay haskell https://github.com/gentoo-haskell/gentoo-haskell.git
    update_use dev-lang/ghc     +binary
    echo "*/*::haskell ~$(portageq envvar ARCH)" > /etc/portage/package.accept_keywords/haskell
    # Some of the haskell packages try to install directly to ROOT without installing to local first. 
    # This breaks the intallation. So we install on the builder first.
    emerge -v --with-bdeps=y --deep -K -j15 ${_packages} || emerge -v -k --with-bdeps=y --deep ${_packages}
}

configure_rootfs_build()
{
    provide_package 'app-admin/perl-cleaner'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build(){
    copy_gcc_libs
}
