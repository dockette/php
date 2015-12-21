FROM debian:jessie

# Install wget
RUN apt-get update && apt-get install -y wget && \
	echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list && \
	echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list

# Add GPG key
RUN wget https://www.dotdeb.org/dotdeb.gpg && \
  apt-key add dotdeb.gpg && \
  apt-get update

# Install PHP 7.0
RUN apt-get install -y php7.0-cli php7.0-fpm php7.0-curl php7.0-imap php7.0-pgsql php7.0-gd php7.0-mcrypt

# Add FPM configuration
ADD ./php-fpm.conf /etc/php/7.0/fpm/

# Clean image
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Start php fpm
CMD ["php-fpm7.0"]
