FROM php:8-cli

# install composer
RUN cd /root \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && apt install git unzip

# install npm
RUN apt-get update \
    && apt install -y nodejs npm \
    && npm install -g n \
    && n stable \
    && apt purge -y nodejs npm

# clear cache
RUN apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*