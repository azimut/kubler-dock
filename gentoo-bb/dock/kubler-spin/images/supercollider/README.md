```
H # docker run -p 3000:3000/udp -p 3001:3001/udp  --name supercollider --rm -ti  kubler-spin/supercollider
H # qjackctl # start jackd and check while working this that netsource is connected to the output
H # jack_netsource -H 10.0.42.2

C # jackd  -r -d net
C # scsynth -u 3001
C # jack_connect SuperCollider:out_1 system:playback_1
C # jack_connect SuperCollider:out_2 system:playback_2
C # sclang
```

List jack sources
```
C # jack_lsp -c
```

Commands to send a sin wave to SC
```
s = Server("myServer", NetAddr("127.0.0.1", 3001 ));
s.boot
( SynthDef("sine", { arg freq=800; var osc; osc = SinOsc.ar(freq, 0, 0.1); Out.ar(0, osc); }).writeDefFile; )
s.sendSynthDef("sine");
s.sendMsg("/s_new", "sine", x = s.nextNodeID, 1, 0);
s.sendMsg("/n_free", x);
s.quit
```


```
s = Server("myServer", NetAddr("127.0.0.1", 3001 ));
                                                                           
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
        ~dirt.start(57120, [0, 0]);   // start listening on port 57120, create two orbits, each sending audio to
}
)
```
Add SC tidal

C # jackd  -r -d net
C # sclang


```
s = Server("myServer", NetAddr("127.0.0.1", 3001 ));
// configure the sound server: here you could add hardware specific options        
// see http://doc.sccode.org/Classes/ServerOptions.html                            
s.options.numBuffers = 1024 * 16; // increase this if you need to load more samples                           
s.options.memSize = 8192 * 16; // increase this if you get "alloc failed" messages                            
// boot the server and start SuperDirt                                                                   
s.boot
~dirt = SuperDirt(2, s); // two output channels, increase if you want to pan across more channels
~dirt.start(57120, [0, 0]);   // start listening on port 57120, create two orbits, each sending audio to

~dirt.start(7771, [0, 0]);   // start listening on port 57120, create two orbits, each sending audio to

```

[API](http://doc.sccode.org/Browse.html)
http://sam.aaron.name/2012/11/02/supercollider-on-pi.html
http://doc.sccode.org/Classes/Server.html
[sclang and scsynth diagram](http://doc.sccode.org/Guides/ClientVsServer.html)
[building sc for the PI](http://supercollider.github.io/development/building-raspberrypi)
http://doc.sccode.org/Tutorials/Tutorial.html
