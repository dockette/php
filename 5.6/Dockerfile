FROM debian:jessie

# Install PHP 5.6
RUN apt-get update && \
	apt-get install -y php7.0-cli php7.0-fpm php7.0-curl php7.0-imap php7.0-pgsql php7.0-gd php7.0-mcrypt

# Add FPM configuration
ADD ./php-fpm.conf /etc/php5/fpm/

# Clean image
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Start php fpm
CMD ["php5-fpm"]
