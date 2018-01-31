# Lynx

Run [lynx][] in a container.

```
# docker run --name davmail --hostname davmail --rm -v /etc/localtime:/etc/localtime:ro -v $HOME/davmail.properties:/opt/davmail/conf/davmail.properties:ro -v $HOME/davmail.properties:/opt/davmail/conf/davmail.properties:ro -p 1110:1110 kubler-spin/davmail
```
[lynx](https://en.wikipedia.org/wiki/Lynx_(web_browser))
