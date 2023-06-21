FROM debian:bullseye

RUN apt-get update \
    && apt-get install -y mariadb-server \
    && rm -rf /var/lib/apt/lists/*

VOLUME ["/var/lib/mysql"]

EXPOSE 3306

CMD ["mysqld"]
