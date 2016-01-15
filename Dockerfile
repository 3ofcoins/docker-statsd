# -*- conf -*-
FROM node:5
MAINTAINER Maciej Pasternacki <maciej@3ofcoins.net>

COPY statsd /opt/statsd
COPY config.js /opt/statsd/config.js

EXPOSE  8125/udp
EXPOSE  8126/tcp

USER nobody
WORKDIR /opt/statsd
ENTRYPOINT [ "/usr/local/bin/node" ]
CMD [ "stats.js", "config.js" ]

