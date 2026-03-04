FROM debian:trixie

RUN apt-get update && apt-get install -y mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/init_db.sh /usr/local/bin/init_db.sh

RUN chmod +x /usr/local/bin/init_db.sh

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld && chown -R mysql:mysql /var/lib/mysql 

EXPOSE 3306

CMD [ "bash", "/usr/local/bin/init_db.sh" ]