
tar -xzf /tmp/wordpress.tar.gz -C /var/www/html/ 

chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

./usr/sbin/php-fpm7.4 -F