# BASE image
FROM debian:bullseye

# application install
RUN	apt-get update && apt-get install -y \
	curl \
	php7.4 \
	php7.4-fpm \
	php7.4-mysql \	
	dumb-init

VOLUME ["/home/jaejkim/data/wordpress"]

EXPOSE	9000

RUN	mkdir /run/php \
	&& chmod 777 /run/php

RUN curl -o /tmp/wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz

COPY conf/wp-config.php /etc/php/7.4/fpm/pool.f/wp-config.php
COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY tool/setting.sh .
RUN chmod 777 ./setting.sh

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["./setting.sh"]
