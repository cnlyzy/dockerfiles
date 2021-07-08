FROM php:fpm
# php.ini 自定义配置
# COPY php/pan_php.ini /usr/local/etc/php/conf.d/pan_php.ini
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
    # && docker-php-ext-install -j$(nproc) iconv \
    # && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install opcache exif pdo pdo_pgsql pdo_mysql mysqli \
    && pecl install redis \
    && docker-php-ext-enable redis
WORKDIR /var/www/html