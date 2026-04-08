FROM debian:bullseye

RUN apt-get update && apt-get install -y php7.4 php7.4-fpm php7.4-mysql mariadb-client curl

RUN mkdir -p /run/php

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY tools/wp_setup.sh /wp_setup.sh

RUN chmod +x /wp_setup.sh

CMD ["/wp_setup.sh"]