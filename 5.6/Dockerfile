FROM debian:jessie

# Install PHP 5.6
RUN apt-get update && \
	apt-get install -y php5-cli php5-fpm php5-curl php5-imap php5-pgsql php5-gd php5-mcrypt

# Add FPM configuration
ADD ./php-fpm.conf /etc/php5/fpm/

# Clean image
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Start php fpm
CMD ["php5-fpm"]
