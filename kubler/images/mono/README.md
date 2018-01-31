## kubler/flexget

Run this [Flexget][] image with:

    $ docker run -p 5000:5000 -p 8181:8181  --rm -ti -v $HOME/headphones:/home/user/data kubler-spin/headphones

Installed from [Pip][].

    $ curl 'http://127.0.0.1:8181/api?apikey=<APIKEY>&cmd=addAlbum&id=<ALBUMID>'

[Last Build][packages]

[Flexget]: https://www.flexget.com/
[Pip]: https://github.com/pypa/pip
[packages]: PACKAGES.md
