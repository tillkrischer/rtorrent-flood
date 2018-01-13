`docker build -t flood .`

`docker run -d -u $UID:$GID -p 3000:3000 -v /home/till/Downloads:/data -v /home/till/.flood/flood-db:/flood-db -v /home/till/.flood/rtorrent-session:/rtorrent-session -v /home/till.flood/rtorrent-watch:/rtorrent-watch flood:latest`

