`docker build -t flood .`

`docker run -d -u $UID:$GID -p 3000:3000 -p 6881:6881 -v /home/till/Downloads:/data -v /home/till/.flood/flood-db:/flood-db -v /home/till/.flood/rtorrent-session:/rtorrent-session flood:latest`

