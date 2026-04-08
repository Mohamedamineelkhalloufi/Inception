#!/bin/bash
set -e

mysqld_safe &
pid="$!"

until mysqladmin ping --silent; do
    sleep 1
done

mysql <<EOF
ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';
CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};
CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';
FLUSH PRIVILEGES;
EOF

kill "$pid"
wait "$pid"

exec mysqld_safe