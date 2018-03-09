#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_packages="dev-java/oracle-jdk-bin app-shells/bash dev-java/jna"

configure_bob(){
    local jdk_url jce_url jdk_tar
    # download oracle jdk bin
    jdk_url=http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
    jdk_url=http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-i586.tar.gz

    #jdk_tar=$(emerge -pf oracle-jdk-bin 2>&1 >/dev/null | grep -m1 "jre-[0-9a-z]*-linux-x64\.tar\.gz")
    regex="(jdk-[0-9a-z]*-linux-x64\.tar\.gz)"
    regex="(jdk-[0-9a-z]*-linux-i586\.tar\.gz)"
    [[ ${jdk_url} =~ $regex ]] && jdk_tar="${BASH_REMATCH[1]}"
    [[ -n ${jdk_tar} ]] && [[ ! -f /distfiles/"${jdk_tar}" ]] && download_from_oracle "${jdk_url}"

    jce_url=http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip
    [[ ! -f /distfiles/jce_policy-8.zip ]] && download_from_oracle "${jce_url}"
    update_use 'dev-java/oracle-jdk-bin' +headless-awt +jce -fontconfig
    update_use 'dev-java/jna'            -awt
    update_use 'sys-libs/ncurses'        +minimal
    echo 'USE="${USE} -readline -xattr -acl -deprecated"' >> /etc/portage/make.conf
    # skip python and iced-tea
    provide_package dev-lang/python dev-java/icedtea-bin

    emerge -v dev-java/oracle-jdk-bin app-shells/bash app-arch/advancecomp
    #emerge -v x11-libs/libX11 x11-libs/libXt
    emerge -v dev-java/jna
}
#
# This hook is called just before starting the build of the root fs
#
configure_rootfs_build()
{


    # add user/group for unprivileged container usage
    groupadd -g 808 java
    useradd -u 8080 -g java -d /home/java java
    mkdir -p "${_EMERGE_ROOT}"/home/java
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
    rm -rf ${_EMERGE_ROOT}/opt/oracle-*/man \
           ${_EMERGE_ROOT}/opt/oracle-*/lib/desktop
}
