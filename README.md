# PHP

Ready-to-use images for PHP 5.5 / 5.6 / 7.0 / 7.1 / 7.2, with FPM and Composer preinstalled.

-----

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php.svg?style=flat)](https://hub.docker.com/r/dockette/php/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php.svg?style=flat)](https://hub.docker.com/r/dockette/php/)

## Discussion / Help

[![Join the chat](https://img.shields.io/gitter/room/dockette/dockette.svg?style=flat-square)](https://gitter.im/dockette/dockette?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Image

These images have preinstalled couple of PHP extensions. Let's take a look.

| PHP       | PHP+FPM   | 
|-----------|-----------|
| apc       | apc       | 
| apcu      | apcu      | 
| bcmath    | bcmath    | 
| bz2       | bz2       | 
| calendar  | calendar  | 
| cgi       | cgi       | 
| cli       | cli       | 
| ctype     | ctype     | 
| curl      | curl      | 
| geoip     | geoip     | 
| gettext   | gettext   | 
| gd        | gd        | 
| -         | fpm       | 
| intl      | intl      | 
| imagick   | imagick   | 
| imap      | imap      | 
| ldap      | ldap      | 
| mbstring  | mbstring  | 
| mcrypt    | mcrypt    | 
| memcached | memcached | 
| mongo     | mongo     |
| mysql     | mysql     |
| pdo       | pdo       | 
| pgsql     | pgsql     | 
| redis     | redis     | 
| soap      | soap      | 
| sqlite3   | sqlite3   | 
| ssh2      | ssh2      | 
| xmlrpc    | xmlrpc    | 
| xsl       | xsl       | 
| zip       | zip       | 

## Composer

![Composer](https://avatars3.githubusercontent.com/u/837015?v=3&s=200)

This super image has also preinstalled [Composer](https://getcomposer.org) with ultra fast plugin [prestissimo](https://github.com/hirak/prestissimo).

## Usage

### 7.2 / 7.2+FPM

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php72.svg?style=flat)](https://hub.docker.com/r/dockette/php71/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php72.svg?style=flat)](https://hub.docker.com/r/dockette/php71/)
[![Docker Stars](https://img.shields.io/docker/stars/dockette/php72-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php71-fpm/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php72-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php71-fpm/)

```
docker run -v /path/to/site:/srv dockette/php72
docker run -v /path/to/site:/srv dockette/php72-fpm
```

```
docker run -v /path/to/site:/srv dockette/php:7.2
docker run -v /path/to/site:/srv dockette/php:7.2-fpm
```

In case of customization:

- /etc/php/7.2/cli/conf.d/991-custom.ini
- /etc/php/7.2/cgi/conf.d/991-custom.ini
- /etc/php/7.2/fpm/conf.d/991-custom.ini

### 7.1 / 7.1+FPM

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php71.svg?style=flat)](https://hub.docker.com/r/dockette/php71/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php71.svg?style=flat)](https://hub.docker.com/r/dockette/php71/)
[![Docker Stars](https://img.shields.io/docker/stars/dockette/php71-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php71-fpm/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php71-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php71-fpm/)

```
docker run -v /path/to/site:/srv dockette/php71
docker run -v /path/to/site:/srv dockette/php71-fpm
```

```
docker run -v /path/to/site:/srv dockette/php:7.1
docker run -v /path/to/site:/srv dockette/php:7.1-fpm
```

In case of customization:

- /etc/php/7.1/cli/conf.d/991-custom.ini
- /etc/php/7.1/cgi/conf.d/991-custom.ini
- /etc/php/7.1/fpm/conf.d/991-custom.ini

### 7.0 / 7.0+FPM

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php70.svg?style=flat)](https://hub.docker.com/r/dockette/php70/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php70.svg?style=flat)](https://hub.docker.com/r/dockette/php70/)
[![Docker Stars](https://img.shields.io/docker/stars/dockette/php7-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php70-fpm/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php7-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php70-fpm/)

```
docker run -v /path/to/site:/srv dockette/php70
docker run -v /path/to/site:/srv dockette/php70-fpm
```

```
docker run -v /path/to/site:/srv dockette/php:7.0
docker run -v /path/to/site:/srv dockette/php:7.0-fpm
```

In case of customization:

- /etc/php/7.0/cli/conf.d/991-custom.ini
- /etc/php/7.0/cgi/conf.d/991-custom.ini
- /etc/php/7.0/fpm/conf.d/991-custom.ini

### 5.6 / 5.6+FPM

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php56.svg?style=flat)](https://hub.docker.com/r/dockette/php56/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php56.svg?style=flat)](https://hub.docker.com/r/dockette/php56/)
[![Docker Stars](https://img.shields.io/docker/stars/dockette/php56-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php56-fpm/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php56-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php56-fpm/)

```
docker run -v /path/to/site:/srv dockette/php56
docker run -v /path/to/site:/srv dockette/php56-fpm
```

```
docker run -v /path/to/site:/srv dockette/php:5.6
docker run -v /path/to/site:/srv dockette/php:5.6-fpm
```

In case of customization:

- /etc/php/5.6/cli/conf.d/991-custom.ini
- /etc/php/5.6/cgi/conf.d/991-custom.ini
- /etc/php/5.6/fpm/conf.d/991-custom.ini

### 5.5 / 5.5+FPM

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php55.svg?style=flat)](https://hub.docker.com/r/dockette/php55/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php55.svg?style=flat)](https://hub.docker.com/r/dockette/php55/)
[![Docker Stars](https://img.shields.io/docker/stars/dockette/php55-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php55-fpm/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php55-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php55-fpm/)

```
docker run -v /path/to/site:/srv dockette/php55
docker run -v /path/to/site:/srv dockette/php55-fpm
```

```
docker run -v /path/to/site:/srv dockette/php:5.5
docker run -v /path/to/site:/srv dockette/php:5.5-fpm
```

In case of customization:

- /etc/php5/cli/conf.d/991-custom.ini
- /etc/php5/cgi/conf.d/991-custom.ini
- /etc/php5/fpm/conf.d/991-custom.ini
