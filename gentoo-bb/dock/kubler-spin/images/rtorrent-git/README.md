# sudo docker network create redazul
# sudo docker run --name rtorrent --hostname rtorrent --network redazul -v $HOME/anime:/opt --rm -ti kubler-spin/rtorrent-git:latest

$ rtorrent -o scgi_port=0.0.0.0:5000 -n -o directory.default.set=/opt

# sudo docker run -p 3000:3000 --rm -v $HOME/config.js:/opt/flood/config.js --name flood --hostname flood --network redazul --entrypoint=/bin/sh -ti kubler-spin/flood

~ # cd /opt/flood/
/opt/flood # npm start
