FROM debian:bullseye

RUN apt-get -y update && apt-get -y install \
	dumb-init \
	procps

RUN apt-get -y install \
	nginx \
	openssl

COPY conf/default.conf /etc/nginx/sites-enabled/default

#Generate ssl key && authorization permission
RUN mkdir -p /etc/nginx/ssl/ && chmod 777 /etc/nginx/ssl/
RUN echo "\n\n\n\n\n\n\n" | openssl req -x509 -days 365 -nodes -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.pem -out /etc/nginx/ssl/nginx.crt

ENTRYPOINT ["/usr/bin/dumb-init"]

CMD ["/usr/sbin/nginx", "-g", "daemon off;"] 