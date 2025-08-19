FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY server.c /
COPY run.sh /

RUN apt-get -y update && apt-get install -y gcc spawn-fcgi libfcgi-dev

ENTRYPOINT [ "sh", "./run.sh" ]
