FROM php:fpm-stretch
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libpq-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install opcache exif pdo_pgsql pdo_mysql bcmath \
    && pecl install redis \
    && pecl install mcrypt-1.0.2 \
    && pecl install swoole \
    && pecl install seaslog \
    && docker-php-ext-enable redis mcrypt swoole seaslog