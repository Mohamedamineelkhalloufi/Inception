FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server

COPY tools/init_db.sh /usr/local/bin/init_db.sh

RUN chmod +x /usr/local/bin/init_db.sh

EXPOSE 3306

CMD [ "bash", "/usr/local/bin/init_db.sh" ]