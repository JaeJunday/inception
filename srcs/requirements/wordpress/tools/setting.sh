#!bin/bash

# unzip wordpress
tar -xzf /tmp/wordpress.tar.gz -C /var/www/html/ 

# wp_config recoverd guard && env_replace
cp /tmp/wp-config.php /var/www/html/wordpress/wp-config.php
bash ./replace_env.sh

# nginx authority allowed
chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# run php-fpm7.4
./usr/sbin/php-fpm7.4 -F