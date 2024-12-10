FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt-get install -y vim nginx openssl

COPY /conf/nginx.conf /etc/nginx/nginx.conf

COPY /tools/nginx.sh /

RUN chmod +x /nginx.sh

CMD ["/nginx.sh"]

