#!bin/bash

# wp_cli download
wp_cli core download --allow-root --path=$WORDPRESS_PATH

# wp recorver guard
cp /tmp/wp-config.php $WORDPRESS_PATH/wp-config.php 

# self env_replace
bash ./replace_env.sh

# nginx authority allowed
chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# default user auto generate
wp_cli core install --url=$DOMAIN_NAME --title=$WORDPRESS_TITLE --admin_email=$WORDPRESS_ADMIN_EMAIL --admin_password=$WORDPRESS_DB_PASSWORD --admin_name=$WORDPRESS_DB_USER --allow-root --path=$WORDPRESS_PATH --skip-email
wp_cli user create default default@42.fr --user_pass=$WORDPRESS_USER_PASS --role=subscriber --allow-root --path=$WORDPRESS_PATH

# run php-fpm7.4
./usr/sbin/php-fpm7.4 -F