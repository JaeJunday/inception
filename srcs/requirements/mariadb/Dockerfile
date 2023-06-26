# Base image
FROM debian:bullseye

# Install MariaDB
RUN apt-get update && apt-get install -y \
    mariadb-server \
    && rm -rf /var/lib/apt/lists/*

# MariaDB configuration
ENV MYSQL_ROOT_PASSWORD=my_root_password
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=wordpress_user
ENV MYSQL_PASSWORD=wordpress_password

# Copy database initialization script

# Expose port
EXPOSE 3306

# Start MariaDB
CMD ["mysqld"]
FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    mariadb-server

VOLUME ["/var/lib/mysql"]

EXPOSE 3306

CMD ["mysqld"]
