#!bin/bash
# wp_DB
sed -i "s/WORDPRESS_DB_NAME/$WORDPRESS_DB_NAME/" $WORDPRESS_PATH/wp-config.php
sed -i "s/WORDPRESS_DB_USER/$WORDPRESS_DB_USER/" $WORDPRESS_PATH/wp-config.php
sed -i "s/WORDPRESS_DB_PASSWORD/$WORDPRESS_DB_PASSWORD/" $WORDPRESS_PATH/wp-config.php
sed -i "s/WORDPRESS_DB_HOST/$WORDPRESS_DB_HOST/" $WORDPRESS_PATH/wp-config.php
# auth
sed -i "s/WORDPRESS_AUTH_KEY/$WORDPRESS_AUTH_KEY/" $WORDPRESS_PATH/wp-config.php
sed -i "s/WORDPRESS_SECURE_AUTH_KEY/$WORDPRESS_SECURE_AUTH_KEY/" $WORDPRESS_PATH/wp-config.php
sed -i "s/WORDPRESS_LOGGED_IN_KEY/$WORDPRESS_LOGGED_IN_KEY/" $WORDPRESS_PATH/wp-config.php
sed -i "s/WORDPRESS_NONCE_KEY/$WORDPRESS_NONCE_KEY/" $WORDPRESS_PATH/wp-config.php
sed -i "s/WORDPRESS_AUTH_SALT/$WORDPRESS_AUTH_SALT/" $WORDPRESS_PATH/wp-config.php
sed -i "s/WORDPRESS_SECURE_AUTH_SALT/$WORDPRESS_SECURE_AUTH_SALT/" $WORDPRESS_PATH/wp-config.php
sed -i "s/WORDPRESS_LOGGED_IN_SALT/$WORDPRESS_LOGGED_IN_SALT/" $WORDPRESS_PATH/wp-config.php
sed -i "s/WORDPRESS_NONCE_SALT/$WORDPRESS_NONCE_SALT/" $WORDPRESS_PATH/wp-config.php 