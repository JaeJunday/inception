<?php
# DB setting

define( 'DB_NAME', 'mydb' );
define( 'DB_USER', 'jaejkim' );
define( 'DB_PASSWORD', '1234' );
define( 'DB_HOST', 'mariadb' );

$table_prefix = 'wp_';
define( 'AUTH_KEY', $_ENV['WORDPRESS_AUTH_KEY'] );
define( 'SECURE_AUTH_KEY', $_ENV['WORDPRESS_SECURE_AUTH_KEY'] );
define( 'LOGGED_IN_KEY', $_ENV['WORDPRESS_LOGGED_IN_KEY'] );
define( 'NONCE_KEY', $_ENV['WORDPRESS_NONCE_KEY'] );
define( 'AUTH_SALT', $_ENV['WORDPRESS_AUTH_SALT'] );
define( 'SECURE_AUTH_SALT', $_ENV['WORDPRESS_SECURE_AUTH_SALT'] );
define( 'LOGGED_IN_SALT', $_ENV['WORDPRESS_LOGGED_IN_SALT'] );
define( 'NONCE_SALT', $_ENV['WORDPRESS_NONCE_SALT'] );

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once ABSPATH . 'wp-settings.php';

