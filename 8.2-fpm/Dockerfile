FROM dockette/debian:bullseye

LABEL maintainer="sulcmil@gmail.com"

# PHP
ENV PHP_MODS_DIR=/etc/php/8.2/mods-available
ENV PHP_CLI_DIR=/etc/php/8.2/cli
ENV PHP_CLI_CONF_DIR=${PHP_CLI_DIR}/conf.d
ENV PHP_CGI_DIR=/etc/php/8.2/cgi
ENV PHP_CGI_CONF_DIR=${PHP_CGI_DIR}/conf.d
ENV PHP_FPM_DIR=/etc/php/8.2/fpm
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
        # php8.2-apc \
        # php8.2-apcu \
        php8.2-bz2 \
        php8.2-bcmath \
        php8.2-calendar \
        php8.2-cgi \
        php8.2-cli \
        php8.2-ctype \
        php8.2-curl \
        php8.2-fpm \
        php8.2-gettext \
        php8.2-gd \
        php8.2-intl \
        php8.2-imap \
        php8.2-ldap \
        php8.2-mbstring \
        # php8.2-memcached \
        # php8.2-mongo \
        php8.2-mysql \
        php8.2-pdo \
        php8.2-pgsql \
        # php8.2-redis \
        php8.2-soap \
        php8.2-sqlite3 \
        php8.2-zip \
        # php8.2-xmlrpc \
        php8.2-xsl && \
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
CMD ["php-fpm8.2"]
