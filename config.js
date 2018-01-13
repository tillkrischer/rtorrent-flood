const CONFIG = {
    baseURI: '/',
    dbCleanInterval: 1000 * 60 * 60,
    dbPath: '/flood-db/',
    floodServerPort: 3000,
    maxHistoryStates: 30,
    pollInterval: 1000 * 5,
    secret: 'flood',
    scgi: {
          host: 'localhost',
          port: 5000,
          socket: true,
          socketPath: '/tmp/rtorrent.sock'
        },
    ssl: false,
    sslKey: '/absolute/path/to/key/',
    sslCert: '/absolute/path/to/certificate/',
    torrentClientPollInterval: 1000 * 2
};

module.exports = CONFIG;
