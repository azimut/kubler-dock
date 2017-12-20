Run this [nodejs][] image with:

    $ docker run -p 3000:3000 \
                 --add-host=flood:192.168.1.101 --add-host=rtorrent:192.168.1.101 \
                 --rm \
                 --name flood --hostname flood \
                 --read-only \
                 --tmpfs=/opt/flood/server/temp \
                 -v $HOME/flood/config.js:/opt/flood/config.js:ro \
                 -v $HOME/flood/db:/opt/flood/server/db \
                 -v /etc/localtime:/etc/localtime:ro \
                 --net=host \
                 -ti kubler-spin/flood

Includes [npm][]

[nodejs]: https://nodejs.org/
[npm]: https://docs.npmjs.com/
