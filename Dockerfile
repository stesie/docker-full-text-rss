FROM php:7.3-apache
MAINTAINER Stefan Siegl <stesie@brokenpipe.de>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    git-core libtidy-dev && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-install tidy && \
    git clone https://bitbucket.org/fivefilters/full-text-rss.git /var/www/html && \
    rm -rf /var/www/html/site_config/standard && \
    git clone https://github.com/fivefilters/ftr-site-config.git /var/www/html/site_config/standard
