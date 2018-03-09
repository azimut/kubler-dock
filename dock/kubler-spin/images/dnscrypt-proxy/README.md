# dnscrypt-proxy

Run [dnscrypt-proxy][] in a container. Defaults to openddns server. You can [pick][] your own.

```
# docker run -p 127.0.0.1:53:5353/udp \
             --cap-drop=ALL \
             --cap-add=IPC_LOCK \
             --rm \
             -ti \
             --name dnscrypt-proxy \
             kubler-spin/dnscrypt-proxy 
```
[dnscrypt-proxy](https://github.com/jedisct1/dnscrypt-proxy)
[pick](https://github.com/jedisct1/dnscrypt-proxy/blob/master/dnscrypt-resolvers.csv)
