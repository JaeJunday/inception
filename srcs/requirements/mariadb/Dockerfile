FROM debian:bullseye

ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=wordpress_user
ENV MYSQL_PASSWORD=wordpress_password

RUN apt-get update && apt-get install -y \
    mariadb-server

COPY my.cnf /etc/mysql/my.cnf

RUN service mysql start \
    && mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE} DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" \
    && mysql -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';" \
    && mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';" \
    && mysql -e "FLUSH PRIVILEGES"

EXPOSE 3306

CMD ["mysqld", "--user=mysql", "--console"]