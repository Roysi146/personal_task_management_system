# Dockerfile sederhana untuk project PHP + MySQL driver
FROM php:8.2-apache

# diperlukan untuk mysqli
RUN docker-php-ext-install mysqli

# salin project ke web root
COPY . /var/www/html/

# atur permission sederhana jika perlu
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
CMD ["apache2-foreground"]

