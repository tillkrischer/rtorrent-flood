FROM ubuntu

RUN apt-get update
RUN apt-get install -y npm curl git mediainfo rtorrent supervisor

RUN npm install -g n
RUN n latest
RUN npm install -g node-gyp

RUN git clone https://github.com/jfurrow/flood.git
WORKDIR flood
COPY config.js .
RUN npm install
RUN npm run build
WORKDIR /

COPY supervisord.conf /supervisord.conf
COPY rtorrent.rc /rtorrent.rc

EXPOSE 3000
EXPOSE 6881
VOLUME /data
VOLUME /flood-db
VOLUME /rtorrent-session
VOLUME /rtorrent-watch

CMD [ "/usr/bin/supervisord", "-n", "-c", "/supervisord.conf" ]
