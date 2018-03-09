_packages="
media-sound/supercollider::azimut
media-sound/supercollider-plugins::azimut
media-sound/jack-audio-connection-kit
media-sound/darkice
net-misc/icecast"

# force native compilation
_emerge_bin="emerge"

set -x

#	url = https://github.com/supercollider-quarks/BatLib.git
#	url = https://github.com/Qirky/FoxDotQuark.git

configure_bob(){
    add_overlay azimut 'https://github.com/azimut/overlay'

    update_keywords 'media-sound/darkice'                   '+**'
    update_keywords 'media-sound/jack-audio-connection-kit' '+**'
    update_keywords 'media-sound/supercollider'             '+**'
    update_keywords 'media-sound/supercollider-plugins'     '+**'

    update_use 'media-libs/alsa-lib'       -python
    update_use 'media-sound/darkice'       +jack +mp3
    update_use 'media-sound/supercollider' -portaudio +jack +sndfile +server -native
    update_use 'media-sound/supercollider-plugins' -native
    update_use 'net-misc/icecast'          -speex -yp -theora +ssl
}

configure_rootfs_build()
{
    :
    # skip hardcoded rdepend
    #provide_package 'x11-libs/libXt'
}

finish_rootfs_build(){
    rm -rf ${_EMERGE_ROOT}/usr/share/bash-completion/ ${_EMERGE_ROOT}/lib64/gentoo/functions.sh
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
    mkdir -p ${_EMERGE_ROOT}/root/.config/SuperCollider/
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
    # ncurses + scsynth
    copy_gcc_libs

    # lame, need to add the builder until I can disable HID on >3.8.0
    cp /usr/lib64/libudev.so ${_EMERGE_ROOT}/usr/lib64/
}
