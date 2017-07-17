#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
#_packages="app-shells/bash
_packages="dev-java/oracle-jre-bin app-shells/bash"

#
# This hook is called just before starting the build of the root fs
#
configure_bob(){
    emerge -q1 app-arch/advancecomp
}
configure_rootfs_build()
{
    local jre_url jce_url jre_tar
    # download oracle jre bin
    jre_url=http://sdlc-esd.oracle.com/ESD6/JSCDL/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jre-8u131-linux-x64.tar.gz
    #jre_tar=$(emerge -pf oracle-jre-bin 2>&1 >/dev/null | grep -m1 "jre-[0-9a-z]*-linux-x64\.tar\.gz")
    regex="(jre-[0-9a-z]*-linux-x64\.tar\.gz)"
    [[ ${jre_url} =~ $regex ]] && jre_tar="${BASH_REMATCH[1]}"
    [[ -n "${jre_tar}" ]] && [[ ! -f /distfiles/"${jre_tar}" ]] && download_from_oracle "${jre_url}"

    jce_url=http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip
    [[ ! -f /distfiles/jce_policy-8.zip ]] && download_from_oracle "${jce_url}"

    update_use 'dev-java/oracle-jre-bin' +headless-awt +jce -fontconfig
    update_use 'sys-libs/ncurses'        +minimal
    # skip python and iced-tea
    provide_package dev-lang/python dev-java/icedtea-bin
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    # gentoo's run-java-tool.bash wrapper expects which at /usr/bin
    ln -rs "${_EMERGE_ROOT}"/bin/which "${_EMERGE_ROOT}"/usr/bin/which
    find ${_EMERGE_ROOT}/ -type f -name 'rt.jar' -exec advzip -z -1 {} \;
    find ${_EMERGE_ROOT}/ -type f -name 'classes.jsa' -delete
    rm -rf ${_EMERGE_ROOT}/opt/oracle-jre-bin-*/man ${_EMERGE_ROOT}/opt/oracle-jre-bin-*/lib/desktop
    #mv ${_EMERGE_ROOT}/opt/oracle-jre-bin-* ${_EMERGE_ROOT}/opt/oracle-jre-bin
}
