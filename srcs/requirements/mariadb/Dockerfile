FROM	debian:bullseye

RUN 	apt-get -y update && apt-get -y install \
		dumb-init

RUN		apt-get -y install \
		mariadb-server \
		mariadb-client

RUN		mkdir /run/mysqld \
		&& chmod 777 /run/mysqld \
		&& chmod 777 /var/lib/mysql \
		&& rm -rf /var/lib/mysql/aria_log_control

COPY	tools/setting.sh .
COPY	conf/my.cnf /etc/mysql/my.cnf
COPY	conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN		chmod +x ./setting.sh
RUN		chmod 644 /etc/mysql/my.cnf
RUN		chmod 644 /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE		3306

VOLUME		["/home/jaejkim/data/mariadb"]

ENTRYPOINT	["/usr/bin/dumb-init", "--"]

CMD		["./setting.sh"]
