FROM debian:bullseye

RUN apt-get update \
    && apt-get install -y nginx \
    && rm -rf /var/lib/apt/lists/*

VOLUME ["/home/jaejkim/data/nginx"]

RUN openssl pkcs12 -in <파일명.p12> -clcerts -nokeys -out <인증서.pem>
    openssl pkcs12 -in <파일명.p12> -nocerts -nodes -out <개인키.pem>

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
