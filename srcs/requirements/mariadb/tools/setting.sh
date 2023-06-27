
service mariadb start
mysql -u root -e "set password for 'root'@'localhost' = password('$MYSQL_ROOT_PASSWORD');"
mysql -u root -e "CREATE DATABASE $WORDPRESS_DB_NAME;"
mysql -u root -e "CREATE user $WORDPRESS_DB_USER@$WORDPRESS_DB_NAME identified by '$WORDPRESS_DB_PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $WORDPRESS_DB_NAME.* TO $WORDPRESS_DB_USER@$WORDPRESS_DB_NAME;"
mysql -u root -e "FLUSH PRIVILEGES;"
service mariadb stop