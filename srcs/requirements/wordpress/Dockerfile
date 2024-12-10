FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt-get install -y vim wget php7.4-fpm php-mysql default-mysql-client

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /usr/local/bin/wp && \
    chmod +x /usr/local/bin/wp

COPY /conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY /tools/wordpress.sh /

EXPOSE 21 20 40000:40005

RUN chmod +x /wordpress.sh

CMD ["/wordpress.sh"]