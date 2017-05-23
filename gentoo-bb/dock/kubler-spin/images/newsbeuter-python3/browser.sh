#!/bin/sh

URL="$1"

if echo "$URL" | grep reddit &>/dev/null ; then
    /opt/rtv/bin/rtv -l "$URL"
else
    lynx -accept_all_cookies "$URL"
fi
