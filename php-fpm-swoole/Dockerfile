FROM php:fpm
# 使用 阿里源 替换
RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && sed -i s@/security.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    # && sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list.d/buster.list \
    # && sed -i s@/security.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list.d/buster.list \
    && rm -Rf /var/lib/apt/lists/* &&  cat /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libpq-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libzip-dev \
        zip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install opcache exif pdo_pgsql pdo_mysql mysqli bcmath zip \
    && pecl install redis \
    && pecl install mcrypt \
    && pecl install swoole \
    && pecl install seaslog \
    && pecl install xdebug \
    && docker-php-ext-enable redis mcrypt swoole seaslog xdebug