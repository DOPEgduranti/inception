FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt-get install -y vim mariadb-server 

EXPOSE 3306

COPY conf/50-server.conf /etc/mysql/mariadb.conf.d/501-server.cnf

COPY /tools/mariadb.sh /

RUN chmod +x /mariadb.sh

CMD ["/mariadb.sh"]