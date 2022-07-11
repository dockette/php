FROM dockette/debian:buster

LABEL maintainer="sulcmil@gmail.com"

# PHP
ENV PHP_MODS_DIR=/etc/php/7.0/mods-available
ENV PHP_CLI_DIR=/etc/php/7.0/cli
ENV PHP_CLI_CONF_DIR=${PHP_CLI_DIR}/conf.d
ENV PHP_CGI_DIR=/etc/php/7.0/cgi
ENV PHP_CGI_CONF_DIR=${PHP_CGI_DIR}/conf.d
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
        php7.0-apc \
        php7.0-apcu \
        php7.0-bcmath \
        php7.0-bz2 \
        php7.0-calendar \
        php7.0-cgi \
        php7.0-cli \
        php7.0-ctype \
        php7.0-curl \
        php7.0-geoip \
        php7.0-gettext \
        php7.0-gd \
        php7.0-intl \
        php7.0-imagick \
        php7.0-imap \
        php7.0-ldap \
        php7.0-mbstring \
        php7.0-mcrypt \
        php7.0-memcached \
        php7.0-mongo \
        php7.0-mysql \
        php7.0-pdo \
        php7.0-pgsql \
        php7.0-redis \
        php7.0-soap \
        php7.0-sqlite3 \
        php7.0-ssh2 \
        php7.0-zip \
        php7.0-xmlrpc \
        php7.0-xsl && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # PHP MOD(s) ###############################################################
    ln -s ${PHP_MODS_DIR}/custom.ini ${PHP_CLI_CONF_DIR}/999-custom.ini && \
    ln -s ${PHP_MODS_DIR}/custom.ini ${PHP_CGI_CONF_DIR}/999-custom.ini && \
    # CLEAN UP #################################################################
    apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get remove -y wget curl lsb-release && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

# FILES (it overrides originals)
ADD conf.d/custom.ini ${PHP_MODS_DIR}/custom.ini

# WORKDIR
WORKDIR /srv

# COMMAND
CMD ["php"]
