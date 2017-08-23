_packages="
media-sound/supercollider
media-sound/jack-audio-connection-kit
media-sound/darkice
net-misc/icecast"

# force native compilation
_emerge_bin="emerge"

set -x

#	url = https://github.com/supercollider-quarks/BatLib.git
#	url = https://github.com/tidalcycles/Dirt-Samples
#	url = https://github.com/Qirky/FoxDotQuark.git
#	url = https://github.com/musikinformatik/SuperDirt
#	url = https://github.com/supercollider-quarks/Vowel

configure_bob(){
    update_keywords 'media-sound/darkice'                   '+**'
    update_keywords 'media-sound/jack-audio-connection-kit' '+**'
    update_keywords 'media-sound/supercollider'             '+**'

    update_use 'media-libs/alsa-lib'       -python
    update_use 'media-sound/darkice'       +jack +mp3
    update_use 'media-sound/supercollider' -portaudio +jack +sndfile +server
    update_use 'net-misc/icecast'          -speex -yp -theora +ssl
}

configure_rootfs_build()
{
    :
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build(){
    rm -rf ${_EMERGE_ROOT}/usr/share/bash-completion/ ${_EMERGE_ROOT}/lib64/gentoo/functions.sh
    mkdir -p ${_EMERGE_ROOT}/root/.config/SuperCollider/
    cat > ${_EMERGE_ROOT}/radio.sc <<EOF
Server.default.waitForBoot({

b = Buffer.alloc(s,44100 * 2, 2);

// play a demo sound

SynthDef("help-PingPong",{ arg out=0,bufnum=0,feedback=0.5,delayTime=0.2;
    var left, right;
    left = Decay2.ar(Impulse.ar(0.7, 0.25), 0.01, 0.25,
        SinOsc.ar(SinOsc.kr(3.7,0,200,500)));
    right = Decay2.ar(Impulse.ar(0.5, 0.25), 0.01, 0.25,
        Resonz.ar(PinkNoise.ar(4), SinOsc.kr(2.7,0,1000,2500), 0.2));

    Out.ar(0,
        PingPong.ar(bufnum, [left,right], delayTime, feedback, 1)
    )
}).play(s,[\out, 0, \bufnum, b.bufnum,\feedback,0.5,\delayTime,0.1]);

});
EOF

    cat > ${_EMERGE_ROOT}/root/.config/SuperCollider/startup.scd <<EOF
"SC_JACK_DEFAULT_OUTPUTS".setenv(
        "darkice:left,"
        "darkice:right,"
);

ServerQuit.add({
	'FAIL: scsynth quit'.postln;
	1.exit();
}, Server.default);
EOF
    # ncurses
    copy_gcc_libs

    # lame, need to add the builder
    cp /usr/lib64/libudev.so ${_EMERGE_ROOT}/usr/lib64/
    
    # https://github.com/supercollider/supercollider/issues/1209
    # http://supercollider.github.io/development/building-raspberrypi
    # headless fix
    mv ${_EMERGE_ROOT}/usr/share/SuperCollider/SCClassLibrary/JITLib/GUI/ \
       ${_EMERGE_ROOT}/usr/share/SuperCollider/SCClassLibrary/scide_scqt/JITLibGUI
    mv ${_EMERGE_ROOT}/usr/share/SuperCollider/SCClassLibrary/Common/GUI/ \
       ${_EMERGE_ROOT}/usr/share/SuperCollider/SCClassLibrary/scide_scqt/
}
