#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="dev-lang/python:3.6"
#_keep_headers=true

#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    echo 'PYTHON_TARGETS="python3_6"'       >> /etc/portage/make.conf
    echo 'PYTHON_SINGLE_TARGET="python3_6"' >> /etc/portage/make.conf
    echo 'USE_PYTHON="3.6"'                 >> /etc/portage/make.conf
    echo 'USE="${USE} sqlite"'              >> /etc/portage/make.conf
    emerge -q1 dev-lang/python:3.6 dev-python/pip dev-python/virtualenv
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
    find ${_EMERGE_ROOT}/usr -depth \
	 \( \
	 \( -type d -a -name test -o -name tests -o -name testing \) \
	 -o \
	 \( -type f -a -name '*.pyo' -o -name '*.pyc' \) \
	 \) -print -exec rm -rf '{}' + 
}
