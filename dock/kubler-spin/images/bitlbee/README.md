# Bitlbee

This image has discord, twitter and rocketchat support.

```
docker run --name bitlbee --cap-drop=ALL --rm --read-only --dns 8.8.8.8 -p 127.0.0.1:6667:6667 -v /etc/localtime:/etc/localtime:ro -v $HOME:/var/lib/bitlbee/ -ti kubler-spin/bitlbee
```
We restrict the [docker capabilities][] to none with some help from a [description][] of docker capabilities

```
 [~/bitlbee] > ls -na
 total 116
 -rw-------   1  101 249  1611 Apr  6 03:05 .hush_history
 drwx------   5  101 100  4096 Apr  6 03:00 purple
 -rw-------   1  101 249  1461 Apr  6 03:05 sendai.xml
```

[docker capabilities](https://docs.docker.com/engine/reference/run/)
[description](http://rhelblog.redhat.com/2016/10/17/secure-your-containers-with-this-one-weird-trick/)
