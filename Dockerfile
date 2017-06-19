FROM ubuntu:latest

WORKDIR /app

ADD . /app

RUN apt-get update && apt-get install -y \
unzip \
php-cli \
git \
php-zip \
php-pgsql \
phppgadmin \
openssl \
php-pdo \
php-pdo-mysql \
php-pdo-pgsql \
php-pdo-sqlite \
php-mbstring \
php-tokenizer \
php-xml \
apache2 \
libapache2-mod-php \
composer \
&& rm -rf /var/lib/apt/lists/*

RUN composer global require "laravel/installer"

EXPOSE 8000

