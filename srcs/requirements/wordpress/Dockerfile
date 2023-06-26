FROM debian:bullseye

RUN	apt-get update && apt-get install -y \
	curl \
	php7.4 \
	php7.4-fpm \
	php7.4-mysql \	
	mariadb-client \
	dumb-init \
	&& rm -rf /var/lib/apt/lists/*

VOLUME ["/home/jaejkim/data/wordpress"]

EXPOSE	8080

RUN	mkdir /run/php \
	&& chmod 777 /run/php

RUN curl -o /tmp/wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz \
    && tar -xzf /tmp/wordpress.tar.gz -C /var/www/html/ \
    && rm /tmp/wordpress.tar.gz

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

COPY conf/wp-config.php /etc/php/7.4/fpm/pool.f/conf.php


ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/usr/sbin/php-fpm7.4", "-F"]
