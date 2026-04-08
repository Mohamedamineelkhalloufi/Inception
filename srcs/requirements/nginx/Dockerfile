FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=BG/L=BG/O=1337/OU=42/CN=mohel-kh.42.fr"

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www/html && chown -R www-data:www-data /var/www/html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]