FROM php:8.1-fpm-alpine3.19

RUN apk update && apk add --no-cache \
    autoconf \
    bzip2-dev \
    curl-dev \
    freetype-dev \
    g++ \
    gettext-dev \
    icu-dev \
    imagemagick-dev \
    imap-dev \
    krb5-dev \
    libc-dev \
    libedit-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    libwebp-dev \
    libxpm-dev \
    libzip-dev \
    linux-headers \
    make \
    oniguruma-dev \
    openldap-dev \
    openssl \
    pcre-dev \
    tidyhtml-dev \
    zlib-dev \
    libxslt-dev \
    gmp-dev \
    php81-bcmath \
    php81-bz2 \
    php81-calendar \
    php81-exif \
    php81-gd \
    php81-gettext \
    php81-imap \
    php81-intl \
    php81-mysqli \
    php81-opcache \
    php81-pcntl \
    php81-pdo \
    php81-pdo_mysql \
    php81-shmop \
    php81-soap \
    php81-sockets \
    php81-sysvmsg \
    php81-sysvsem \
    php81-sysvshm \
    php81-tidy \
    php81-xsl \
    php81-zip \
    php81-pecl-mongodb \
    php81-pecl-imagick \
    php81-gmp \
    nano \
    iputils \
    git

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# chmod www to www-data
RUN chown -R www-data:www-data /var/www

# Clean up
RUN rm -rf /var/cache/apk/*
