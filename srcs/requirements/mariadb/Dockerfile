FROM debian:bullseye

# 설치 및 설정
RUN apt-get update \
    && apt-get install -y mariadb-server
RUN chown -R mysql:mysql /var/lib/mysql/

# Mariadb 설정 파일 복사
COPY conf/my.cnf /etc/mysql/my.cnf

# 포트 노출
EXPOSE 3306

# 컨테이너 실행 시 자동으로 Mariadb 서비스 시작
CMD ["mysqld"]
