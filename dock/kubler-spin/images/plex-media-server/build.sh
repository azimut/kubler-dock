#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="
media-tv/plex-media-server"

configure_bob(){
  update_keywords sys-libs/obstack-standalone +~amd64
  # avoid bash
  emerge -1q ${_packages}
}

configure_rootfs_build()
{
  :
}

finish_rootfs_build()
{
  copy_gcc_libs
  # python-cleanup
  # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
  find ${_EMERGE_ROOT}/ -depth \
       \( \
       \( -type d -a -name test -o -name tests -o -name testing -o -name __pycache__ \) \
       -o \
       \( -type f -a -name '*.pyo' -o -name '*.pyc' -o -name '*.whl' \) \
       \) -print -exec rm -rf '{}' + 
}
