FROM php:8-alpine

# install dependency
RUN apk update \
    && apk add --no-cache git unzip \
    && apk add --no-cache bash

# install composer
RUN cd /root \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

# install npm
RUN apk update \
    && apk add --no-cache --update nodejs npm \