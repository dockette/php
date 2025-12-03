FROM dockette/debian:bullseye

LABEL maintainer="sulcmil@gmail.com"

# PHP
ENV PHP_MODS_DIR=/etc/php/8.5/mods-available
ENV PHP_CLI_DIR=/etc/php/8.5/cli
ENV PHP_CLI_CONF_DIR=${PHP_CLI_DIR}/conf.d
ENV PHP_CGI_DIR=/etc/php/8.5/cgi
ENV PHP_CGI_CONF_DIR=${PHP_CGI_DIR}/conf.d
ENV PHP_FPM_DIR=/etc/php/8.5/fpm
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
        php8.5-apcu \
        php8.5-bz2 \
        php8.5-bcmath \
        php8.5-calendar \
        php8.5-cgi \
        php8.5-cli \
        php8.5-ctype \
        php8.5-curl \
        php8.5-fpm \
        php8.5-gettext \
        php8.5-gd \
        php8.5-intl \
        php8.5-imap \
        php8.5-ldap \
        php8.5-mbstring \
        php8.5-memcached \
        php8.5-mysql \
        php8.5-pdo \
        php8.5-pgsql \
        php8.5-soap \
        php8.5-sqlite3 \
        php8.5-zip \
        php8.5-xmlrpc \
        php8.5-xsl && \
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
CMD ["php-fpm8.5"]
