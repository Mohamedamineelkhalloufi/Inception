#!/bin/bash
set -e

until mysqladmin ping -h "mariadb" -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" --silent; do
    sleep 1
done

if [ ! -f /var/www/html/wp-config.php ]; then
    rm -rf /var/www/html/*
    wp core download --allow-root --path='/var/www/html'
    wp config create --allow-root \
        --dbname="$MYSQL_DATABASE" \
        --dbuser="$MYSQL_USER" \
        --dbpass="$MYSQL_PASSWORD" \
        --dbhost="mariadb" \
        --path='/var/www/html'
    wp core install \
        --url="$WP_URL" \
        --title="$WP_TITLE" \
        --admin_user="$WP_AUSER" \
        --admin_password="$WP_APASSWORD" \
        --admin_email="$WP_AEMAIL" \
        --allow-root \
        --path='/var/www/html'
    wp user create "$NEW_USER" "$EMAIL_USER" \
        --role=editor \
        --user_pass="$USER_PASS" \
        --allow-root \
        --path='/var/www/html'
fi

exec php7.4-fpm -F