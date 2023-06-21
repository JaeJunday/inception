FROM debian:bullseye

RUN	apt-get -y update \
	&& apt-get -y install curl \
	&& apt-get -y install php7.4 \
	&& apt-get -y install php7.4-fpm php7.4-mysql mariadb-client wget
	#&& apt-get -y install dumb-init

VOLUME ["/home/jaejkim/data/wordpress"]

EXPOSE	8080

RUN	mkdir /run/php \
	&& chmod 777 /run/php

RUN curl -o /tmp/wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz \
    && tar -xzf /tmp/wordpress.tar.gz -C /var/www/html/ \
    && rm /tmp/wordpress.tar.gz

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

#COPY	conf.php /etc/php/7.4/fpm/pool.f/conf.php

#ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/usr/sbin/php-fpm7.4", "-F"]

