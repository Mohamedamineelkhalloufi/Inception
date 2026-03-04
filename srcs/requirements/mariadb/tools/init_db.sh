#!/bin/bash

mariadbd &
DB_PID=$!

while ! mysqladmin ping -u root -p"$MYSQL_ROOT_PASSWORD" --silent; do
    sleep 1
done

mysql -u root -p"$MYSQL_ROOT_PASSWORD" <<-EOF
CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};
CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';
FLUSH PRIVILEGES;
EOF

kill $DB_PID
wait $DB_PID 2>/dev/null

exec mariadbd