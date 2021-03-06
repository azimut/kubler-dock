_packages="
media-sound/supercollider::azimut
media-sound/supercollider-plugins::azimut
media-sound/jack-audio-connection-kit
media-sound/darkice
net-misc/icecast
dev-vcs/git"

# force native compilation
_emerge_bin="emerge"

set -x

#	url = https://github.com/supercollider-quarks/BatLib.git
#	url = https://github.com/Qirky/FoxDotQuark.git

configure_bob(){
    # Get Quarks packages manually
    for r in https://github.com/supercollider-quarks/Vowel \
             https://github.com/tidalcycles/Dirt-Samples \
             https://github.com/musikinformatik/SuperDirt; do
        local repo_url="${r}"
        local name=${repo_url##*/}
        [[ ! -d /distfiles/${name} ]] && ( cd /distfiles; git clone ${repo_url}; )
        [[   -d /distfiles/${name} ]] && ( cd /distfiles/${name}; git pull --rebase; )
        mkdir -p ${_EMERGE_ROOT}/data
        rsync --delete -av --exclude=.git /distfiles/${name} ${_EMERGE_ROOT}/data
    done

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
    update_use 'dev-vcs/git'               -python -gpg -iconv -pcre
}

configure_rootfs_build()
{
    :
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
    cat > ${_EMERGE_ROOT}/tidal.sc <<EOF
(
// configure the sound server: here you could add hardware specific options
// see http://doc.sccode.org/Classes/ServerOptions.html
s.options.numBuffers = 1024 * 16; // increase this if you need to load more samples
s.options.memSize = 8192 * 16; // increase this if you get "alloc failed" messages
s.options.maxNodes = 1024 * 32; // increase this if you are getting drop outs and the message "too many nodes"
s.options.numOutputBusChannels = 2; // set this to your hardware output channel size, if necessary
s.options.numInputBusChannels = 2; // set this to your hardware input channel size, if necessary
// boot the server and start SuperDirt
s.waitForBoot {
	~dirt = SuperDirt(2, s); // two output channels, increase if you want to pan across more channels
	~dirt.loadSoundFiles;   // load samples (path containing a wildcard can be passed in)
	// for example: ~dirt.loadSoundFiles("/Users/myUserName/Dirt/samples/*");
	s.sync; // wait for samples to be read
	~dirt.start(57120, [0, 0]);   // start listening on port 57120, create two orbits, each sending audio to channel 0. You can direct sounds to the orbits from tidal e.g. by: # orbit "0 1 1"
}
)
EOF
    mkdir -p ${_EMERGE_ROOT}/root/.config/SuperCollider/
    # Setup Quarks packages
    cat > ${_EMERGE_ROOT}/root/.config/SuperCollider/sclang_conf.yaml <<EOF
includePaths:
    - /data/Vowel
    - /data/Dirt-Samples
    - /data/SuperDirt
excludePaths:
    []
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
}
