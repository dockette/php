FROM dockette/php:7

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ADD fpm/php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf

RUN apt-get update && apt-get install -y php7.0-fpm && \
	ln -s /etc/php/mods-available/devstack.ini /etc/php/7.0/fpm/conf.d/999-devstack.ini && \
	apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

CMD ["php-fpm7.0", "-F"]