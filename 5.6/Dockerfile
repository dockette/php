FROM dockette/php:base

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ADD conf.d/custom.ini /etc/php/mods-available/custom.ini

RUN echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list.d/dotdeb.list && \
    echo 'deb-src http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list.d/dotdeb.list && \
    wget http://www.dotdeb.org/dotdeb.gpg && apt-key add dotdeb.gpg && rm dotdeb.gpg && \
    apt-get update && \
    apt-get install -y \
        php5-cli \
        php5-cgi \
        php5-curl \
        php5-imap \
        php5-pgsql \
        php5-mysql \
        php5-sqlite \
        php5-gd \
        php5-mcrypt && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    ln -s /etc/php/mods-available/custom.ini /etc/php5/cli/conf.d/990-custom.ini && \
    ln -s /etc/php/mods-available/custom.ini /etc/php5/cgi/conf.d/990-custom.ini && \
    apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

CMD ["php5-fpm", "-F"]
