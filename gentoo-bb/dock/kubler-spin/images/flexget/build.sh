#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages=""
#_keep_headers=true
set -x
#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    virtualenv /opt/flexget
    source /opt/flexget/bin/activate
    mkdir -p /distfiles/pip
    pip --cache-dir=/distfiles/pip install flexget youtube-dl
}
configure_rootfs_build()
{
    :
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    mkdir -p ${_EMERGE_ROOT}/opt \
             ${_EMERGE_ROOT}/root/.config/flexget
    cp -ar /opt/flexget ${_EMERGE_ROOT}/opt
    cat > ${_EMERGE_ROOT}/root/.config/flexget/config.yml <<EOF
tasks:

  weeabo:

    # https://flexget.com/Plugins/rtorrent
    rtorrent:
        uri: scgi://rtorrent:5000

    rss: https://www.nyaa.se/?page=rss&term=horriblesubs
    quality: 720p
    series:
      - Alice to Zouroku
      - Atom - The Beginning
      - Eromanga-sensei
      - Gin no Guardian
      - Hinako Note
      - Re-Creators
      - Renai Bouken
      - Roku de Nashi Majutsu Koushi to Akashic Records
      - Sakura Quest
      - Shuumatsu Nani Shitemasuka Isogashii Desuka Sukutte Moratte Ii Desuka
      - Tsugumomo
      - Warau Salesman NEW
      - Zero kara Hajimeru Mahou no Sho
 
schedules:

  - tasks: '*'
    interval:
      minutes: 60
EOF

    # flexgetui rm
    rm -rf ${_EMERGE_ROOT}/opt/flexget/lib/python*/site-packages/flexget/ui/
    # python-cleanup
    # https://github.com/docker-library/python/blob/master/3.4/alpine/Dockerfile
	find ${_EMERGE_ROOT}/ -depth \
			\( \
				\( -type d -a -name test -o -name tests -o -name testing \) \
				-o \
				\( -type f -a -name '*.pyo' -o -name '*.pyc' -o -name '*.whl' \) \
	        \) -print -exec rm -rf '{}' + 
}
