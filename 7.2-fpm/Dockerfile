FROM dockette/stretch

MAINTAINER Milan Sulc <sulcmil@gmail.com>

# PHP
ENV PHP_MODS_DIR=/etc/php/7.2/mods-available
ENV PHP_CLI_DIR=/etc/php/7.2/cli
ENV PHP_CLI_CONF_DIR=${PHP_CLI_DIR}/conf.d
ENV PHP_CGI_DIR=/etc/php/7.2/cgi
ENV PHP_CGI_CONF_DIR=${PHP_CGI_DIR}/conf.d
ENV PHP_FPM_DIR=/etc/php/7.2/fpm
ENV PHP_FPM_CONF_DIR=${PHP_FPM_DIR}/conf.d
ENV PHP_FPM_POOL_DIR=${PHP_FPM_DIR}/pool.d
ENV TZ=Europe/Prague

# INSTALLATION
RUN apt update && apt dist-upgrade -y && \
    # DEPENDENCIES #############################################################
    apt install -y wget curl apt-transport-https ca-certificates git && \
    # PHP DEB.SURY.CZ ##########################################################
    wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
    echo "deb https://packages.sury.org/php/ stretch main" > /etc/apt/sources.list.d/php.list && \
    apt update && \
    apt install -y --no-install-recommends \
        php7.2-apc \
        php7.2-apcu \
        php7.2-bz2 \
        php7.2-bcmath \
        php7.2-calendar \
        php7.2-cgi \
        php7.2-cli \
        php7.2-ctype \
        php7.2-curl \
        php7.2-fpm \
        php7.2-geoip \
        php7.2-gettext \
        php7.2-imap \
        php7.2-ldap \
        php7.2-mbstring \
        php7.2-memcached \
        php7.2-mongo \
        php7.2-mysql \
        php7.2-pdo \
        php7.2-pgsql \
        php7.2-redis \
        php7.2-soap \
        php7.2-sqlite3 \
        php7.2-ssh2 \
        php7.2-zip \
        php7.2-xmlrpc \
        php7.2-xsl && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    composer global require "hirak/prestissimo:^0.3" && \
    # PHP MOD(s) ###############################################################
    ln -s ${PHP_MODS_DIR}/custom.ini ${PHP_CLI_CONF_DIR}/999-custom.ini && \
    ln -s ${PHP_MODS_DIR}/custom.ini ${PHP_CGI_CONF_DIR}/999-custom.ini && \
    ln -s ${PHP_MODS_DIR}/custom.ini ${PHP_FPM_CONF_DIR}/999-custom.ini && \
    # CLEAN UP #################################################################
    rm ${PHP_FPM_POOL_DIR}/www.conf && \
    apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get remove -y wget curl && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

# FILES (it overrides originals)
ADD conf.d/custom.ini ${PHP_MODS_DIR}/custom.ini
ADD fpm/php-fpm.conf ${PHP_FPM_DIR}/php-fpm.conf

# WORKDIR
WORKDIR /srv

# COMMAND
CMD ["php-fpm7.2"]
