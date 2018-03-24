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

  # plex root
  plex="/var/lib/plexmediaserver/Library/Application Support/Plex Media Server"

  # Add rm pid
  sed -i '2 i rm -f "'"${plex}/plexmediaserver.pid"'"' \
      ${_EMERGE_ROOT}/usr/sbin/start_pms

  # root root
  plex="${_EMERGE_ROOT}${plex}"

  # Scanner
  plexdir="${plex}/Scanners/Series"
  mkdir -p "${plexdir}"
  cd "${plexdir}"
  wget -O 'Absolute Series Scanner.py' \
      'https://raw.githubusercontent.com/azimut/Absolute-Series-Scanner/environmenttoken/Scanners/Series/Absolute%20Series%20Scanner.py'

  # Plugin
  plexdir="${plex}/Plug-ins"
  mkdir -p "${plexdir}"
  cd "${plexdir}"
  git clone --depth 1 https://github.com/ZeroQI/Hama.bundle

  # Plugin DB
  dbdir=(
    AniDB
    Plex
    OMDB
    TMDB
    TVDB/blank
    TVDB/_cache/fanart/original
    TVDB/episodes
    TVDB/fanart/original
    TVDB/fanart/vignette
    TVDB/graphical
    TVDB/posters
    TVDB/seasons
    TVDB/seasonswide
    TVDB/text
    FanartTV
  )

  mkdir -p "${plex}/${dbdir[@]/#/Plug-in Support\/Data\/com.plexapp.agents.hama\/DataItems}"
  # Fix permissions
  chown -R plex:plex "${plex}"
  chmod 775 -R "${plex}/Plug-ins"
  chmod 775 -R "${plex}/Scanners/Series"
  chmod 775 -R "${plex}/Plug-in Support/Data"
  # Gcc lib
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
