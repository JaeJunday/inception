FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    nginx \
    dumb-init

COPY    conf/default.conf /etc/nginx/sites-enabled/default
COPY	tools/server.crt /etc/nginx/ssl/nginx.crt
COPY	tools/server_pkey.pem /etc/nginx/ssl/nginx.pem

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
