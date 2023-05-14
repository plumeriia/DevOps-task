# Базовый образ
FROM ubuntu:18.04

# Установка Nginx и PHP
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y nginx php-fpm

# Копирование конфигурационных файлов Nginx
COPY nginx.conf /etc/nginx/sites-available/default

# Копирование файлов PHP
COPY index.php /var/www/html/

# Открытие портов
EXPOSE 80

# Запуск сервисов Nginx и PHP
CMD service php7.2-fpm start && nginx -g "daemon off;"
