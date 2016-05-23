FROM dockette/php:base

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ADD conf.d/devstack.ini /etc/php/mods-available/devstack.ini

RUN echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list.d/dotdeb.list && \
    echo 'deb-src http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list.d/dotdeb.list && \
    wget http://www.dotdeb.org/dotdeb.gpg && apt-key add dotdeb.gpg && rm dotdeb.gpg && \
    apt-get update && \
    apt-get install -y \
        php7.0-cli \
        php7.0-cgi \
        php7.0-curl \
        php7.0-imap \
        php7.0-pgsql \
        php7.0-mysql \
        php7.0-sqlite \
        php7.0-gd \
        php7.0-mcrypt && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    ln -s /etc/php/mods-available/devstack.ini /etc/php/7.0/cli/conf.d/999-devstack.ini && \
    ln -s /etc/php/mods-available/devstack.ini /etc/php/7.0/cgi/conf.d/999-devstack.ini && \
    apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

CMD ["php-fpm7.0", "-F"]
