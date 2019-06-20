# PHP

Ready-to-use Debian based images for PHP 5.5, 5.6, 7.0, 7.1, 7.2 and 7.3 with CLI or FPM and Composer preinstalled. Trying to follow the latest releases with official PHP.

-----

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php.svg?style=flat)](https://hub.docker.com/r/dockette/php/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php.svg?style=flat)](https://hub.docker.com/r/dockette/php/)

## Discussion / Help

[![Join the chat](https://img.shields.io/gitter/room/dockette/dockette.svg?style=flat-square)](https://gitter.im/dockette/dockette?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Setup

### Linux packages

These images have preinstalled couple of linux packages: apt-transport-https ca-certificates git.

### PHP extensions

These images have preinstalled couple of PHP extensions: apc, apcu, bcmath, bz2, calendar, cgi, cli, ctype, curl, fpm (in*-fpm), geoip, gettext, gd, intl, imagick, imap, ldap, mbstring, mcrypt (<7.2), memcached, mongo, mysql, pdo, pgsql redis, soap, sqlite3, ssh2 (<7.2), xmlrpc, xsl, zip.

### Composer

![Composer](https://avatars3.githubusercontent.com/u/837015?v=3&s=200)

This super image has also preinstalled [Composer](https://getcomposer.org) with ultra fast plugin [prestissimo](https://github.com/hirak/prestissimo).

## Usage

### CLI

```
docker run -v /path/to/site:/srv dockette/php:7.3
docker run -v /path/to/site:/srv dockette/php:7.3-fpm
docker run -v /path/to/site:/srv dockette/php:7.2
docker run -v /path/to/site:/srv dockette/php:7.2-fpm
docker run -v /path/to/site:/srv dockette/php:7.1
docker run -v /path/to/site:/srv dockette/php:7.1-fpm
docker run -v /path/to/site:/srv dockette/php:7.0
docker run -v /path/to/site:/srv dockette/php:7.0-fpm
docker run -v /path/to/site:/srv dockette/php:5.6
docker run -v /path/to/site:/srv dockette/php:5.6-fpm
docker run -v /path/to/site:/srv dockette/php:5.5
docker run -v /path/to/site:/srv dockette/php:5.5-fpm
```

### Base image

```Dockerfile
FROM dockette/php:7.3-fpm

RUN apt update && apt install -y curl 
```

## Customization

In case of customization PHP 5.6 - 7.3:

- /etc/php/{5.6,7.0,7.1,7.2,7.3}/{cli,cgi,fpm}/conf.d/991-custom.ini

In case of customization PHP 5.5:

- /etc/php5/{cli,cgi,fpm}/conf.d/991-custom.ini
