FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    nginx \
    dumb-init

COPY /conf/default.conf /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
