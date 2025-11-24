# Gunakan image PHP bawaan
FROM php:8.2-apache

# Salin semua file project ke dalam container
COPY . /var/www/html/

# Buka port 80 agar bisa diakses
EXPOSE 80
