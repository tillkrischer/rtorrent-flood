if [ ! -f /rtorrent-config/rtorrent.rc ]; then
	cp /rtorrent.rc /rtorrent-config/rtorrent.rc
fi
/usr/bin/supervisord -n -c /supervisord.conf

