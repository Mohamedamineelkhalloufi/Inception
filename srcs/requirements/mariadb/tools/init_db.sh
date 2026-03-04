#!/bin/bash

if [ ! -d "/var/lib/mysql/mysql" ]; then

    mysql_install_db --user=mysql --ldata=/var/lib/mysql

    mysqld --skip-networking --socket=/run/mysqld.sock &
    pid="$!"

    sleep 5

    mysql -u root << EOF
    CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
    CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
    GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';
    ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
    FLUSH PRIVILEGES;
    EOF

    kill $pid
    wait $pid
fi

exec mysqld