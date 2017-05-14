```
docker run --privileged=true --net=host --rm -ti --group-add $(getent group audio | cut -d: -f3) --entrypoint=/bin/sh kubler-spin/supercollider
```
[API](http://doc.sccode.org/Browse.html)
http://sam.aaron.name/2012/11/02/supercollider-on-pi.html
http://doc.sccode.org/Classes/Server.html
http://doc.sccode.org/Tutorials/Tutorial.html
