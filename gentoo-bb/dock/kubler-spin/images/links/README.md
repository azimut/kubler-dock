# Lynx

Run [lynx][] in a container.

```
# docker run -e TERM=xterm --rm -ti --name lynx --entrypoint=/bin/sh -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPLAY=unix${DISPLAY}" kubler-spin/links 

```
[lynx](https://en.wikipedia.org/wiki/Lynx_(web_browser))
