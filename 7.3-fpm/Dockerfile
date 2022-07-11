FROM dockette/debian:buster

LABEL maintainer="sulcmil@gmail.com"

# PHP
ENV PHP_MODS_DIR=/etc/php/7.3/mods-available
ENV PHP_CLI_DIR=/etc/php/7.3/cli
ENV PHP_CLI_CONF_DIR=${PHP_CLI_DIR}/conf.d
ENV PHP_CGI_DIR=/etc/php/7.3/cgi
ENV PHP_CGI_CONF_DIR=${PHP_CGI_DIR}/conf.d
ENV PHP_FPM_DIR=/etc/php/7.3/fpm
ENV PHP_FPM_CONF_DIR=${PHP_FPM_DIR}/conf.d
ENV PHP_FPM_POOL_DIR=${PHP_FPM_DIR}/pool.d
ENV TZ=Europe/Prague

# INSTALLATION
RUN apt update && apt dist-upgrade -y && \
    # DEPENDENCIES #############################################################
    apt install -y wget curl apt-transport-https ca-certificates lsb-release git unzip && \
    # PHP DEB.SURY.CZ ##########################################################
    wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
    echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list && \
    apt update && \
    apt dist-upgrade -y && \
    apt install -y --no-install-recommends \
        php7.3-apc \
        php7.3-apcu \
        php7.3-bz2 \
        php7.3-bcmath \
        php7.3-calendar \
        php7.3-cgi \
        php7.3-cli \
        php7.3-ctype \
        php7.3-curl \
        php7.3-fpm \
        php7.3-geoip \
        php7.3-gettext \
        php7.3-gd \
        php7.3-intl \
        php7.3-imap \
        php7.3-ldap \
        php7.3-mbstring \
        php7.3-memcached \
        php7.3-mongo \
        php7.3-mysql \
        php7.3-pdo \
        php7.3-pgsql \
        php7.3-redis \
        php7.3-soap \
        php7.3-sqlite3 \
        php7.3-zip \
        php7.3-xmlrpc \
        php7.3-xsl && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # PHP MOD(s) ###############################################################
    ln -s ${PHP_MODS_DIR}/custom.ini ${PHP_CLI_CONF_DIR}/999-custom.ini && \
    ln -s ${PHP_MODS_DIR}/custom.ini ${PHP_CGI_CONF_DIR}/999-custom.ini && \
    ln -s ${PHP_MODS_DIR}/custom.ini ${PHP_FPM_CONF_DIR}/999-custom.ini && \
    # CLEAN UP #################################################################
    rm ${PHP_FPM_POOL_DIR}/www.conf && \
    apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get remove -y wget curl lsb-release && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

# FILES (it overrides originals)
ADD conf.d/custom.ini ${PHP_MODS_DIR}/custom.ini
ADD fpm/php-fpm.conf ${PHP_FPM_DIR}/php-fpm.conf

# WORKDIR
WORKDIR /srv

# COMMAND
CMD ["php-fpm7.3"]
