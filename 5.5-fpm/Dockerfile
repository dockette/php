FROM dockette/jessie

MAINTAINER Milan Sulc <sulcmil@gmail.com>

# PHP
ENV PHP_MODS_DIR=/etc/php/5.5/mods-available
ENV PHP_CLI_DIR=/etc/php/5.5/cli/
ENV PHP_CLI_CONF_DIR=${PHP_CLI_DIR}/conf.d
ENV PHP_CGI_DIR=/etc/php/5.5/cgi/
ENV PHP_CGI_CONF_DIR=${PHP_CGI_DIR}/conf.d
ENV PHP_FPM_DIR=/etc/php/5.5/fpm/
ENV PHP_FPM_CONF_DIR=${PHP_FPM_DIR}/conf.d
ENV TZ=Europe/Prague

# INSTALLATION
RUN apt-get update && apt-get dist-upgrade -y && \
    # DEPENDENCIES #############################################################
    apt-get install -y wget curl apt-transport-https ca-certificates && \
    # PHP DEB.SURY.CZ ##########################################################
    wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
    echo "deb https://packages.sury.org/php/ jessie main" > /etc/apt/sources.list.d/php.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        php5.5-apc \
        php5.5-apcu \
        php5.5-bz2 \
        php5.5-calendar \
        php5.5-cgi \
        php5.5-cli \
        php5.5-ctype \
        php5.5-curl \
        php5.5-fpm \
        php5.5-geoip \
        php5.5-gettext \
        php5.5-gd \
        php5.5-intl \
        php5.5-imagick \
        php5.5-imap \
        php5.5-ldap \
        php5.5-mbstring \
        php5.5-mcrypt \
        php5.5-memcached \
        php5.5-mongo \
        php5.5-mysql \
        php5.5-pdo \
        php5.5-pgsql \
        php5.5-redis \
        php5.5-soap \
        php5.5-sqlite \
        php5.5-ssh2 \
        php5.5-zip \
        php5.5-xmlrpc \
        php5.5-xsl && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    composer global require "hirak/prestissimo:^0.3" && \
    # PHP MOD(s) ###############################################################
    ln -s ${PHP_MODS_DIR}/custom.ini ${PHP_CLI_CONF_DIR}/999-custom.ini && \
    ln -s ${PHP_MODS_DIR}/custom.ini ${PHP_CGI_CONF_DIR}/999-custom.ini && \
    ln -s ${PHP_MODS_DIR}/custom.ini ${PHP_FPM_CONF_DIR}/999-custom.ini && \
    # CLEAN UP #################################################################
    apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get remove -y wget curl apt-transport-https && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

# FILES (it overrides originals)
ADD conf.d/custom.ini ${PHP_MODS_DIR}/custom.ini

# WORKDIR
WORKDIR /srv

# COMMAND
CMD ["php"]
