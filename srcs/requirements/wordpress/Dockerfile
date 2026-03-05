FROM debian:trixie

RUN apt-get update && apt-get install -y php8.4 php-fpm php-mysql mariadb-client wget

RUN mkdir -p /run/php
COPY conf/www.conf /etc/php/8.4/fpm/pool.d/.

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

COPY tools/wp_setup.sh /

RUN chmod +x wp_setup.sh

CMD [ "/wp_setup.sh" ]