FROM dockette/php:5.6

MAINTAINER Milan Sulc <sulcmil@gmail.com>

RUN apt-get update && apt-get install -y php5-fpm && \
    ln -s /etc/php/mods-available/custom.ini /etc/php5/fpm/conf.d/990-custom.ini && \
    mkdir -p /etc/php5/fpm/pool.conf.d/ && \
    apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

ADD fpm/php-fpm.conf /etc/php5/fpm/php-fpm.conf

CMD ["php5-fpm", "-F"]
