FROM debian:bullseye

RUN	apt-get update && apt-get install -y \
	curl \
	php7.4 \
	php7.4-fpm \
	php7.4-mysql \	
	dumb-init

RUN	curl -o /usr/local/bin/wp_cli -SL https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod 777 /usr/local/bin/wp_cli

RUN	mkdir /run/php && chmod 777 /run/php

COPY conf/wp-config.php /tmp/wp-config.php
COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY tools/replace_env.sh .
COPY tools/setting.sh .

RUN chmod 777 ./replace_env.sh
RUN chmod 777 ./setting.sh

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["./setting.sh"]

VOLUME ["/home/jaejkim/data/wordpress"]

EXPOSE	9000