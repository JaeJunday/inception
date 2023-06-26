FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    mariadb-server \
    dumb-init

COPY conf/my.cnf /etc/mysql/my.cnf
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD service mariadb start