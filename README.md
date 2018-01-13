`docker build -t flood .`

`docker run -u $UID:$UID -p 3000:3000 -p 6881:6881 -v /home/till/Downloads:/data -v /home/till/.flood/flood-db:/flood-db -v /home/till/.flood/rtorrent:/rtorrent-config flood:latest`
