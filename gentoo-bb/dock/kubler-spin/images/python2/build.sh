#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="dev-lang/python"
#_keep_headers=true

#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    echo 'PYTHON_TARGETS="python2_7"' >> /etc/portage/make.conf
    echo 'PYTHON_SINGLE_TARGET="python2_7"' >> /etc/portage/make.conf
    echo 'USE_PYTHON="2.7"' >> /etc/portage/make.conf
    echo 'USE="${USE} sqlite -readline"'           >> /etc/portage/make.conf
    mask_package '>=dev-lang/python-3.2.5-r6'
    update_use 'sys-apps/coreutils' '-xattr'
    emerge -q1 dev-lang/python dev-python/pip dev-python/virtualenv
}
configure_rootfs_build()
{
    provide_package app-eselect/eselect-python
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
	find ${_EMERGE_ROOT}/ -depth \
			\( \
				\( -type d -a -name test -o -name tests -o -name testing -o -name __pycache__ \) \
				-o \
				\( -type f -a -name '*.pyo' -o -name '*.pyc' -o -name '*.whl' \) \
	        \) -print -exec rm -rf '{}' + 
}
