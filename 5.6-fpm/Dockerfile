FROM dockette/php:5.6

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ADD fpm/php-fpm.conf /etc/php5/fpm/php-fpm.conf

RUN apt-get update && apt-get install -y php5-fpm && \
	ln -s /etc/php/mods-available/devstack.ini /etc/php5/fpm/conf.d/999-devstack.ini && \
	apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

CMD ["php5-fpm", "-F"]
