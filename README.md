<h1 align=center>Dockette / PHP</h1>

<p align=center>
   Ready-to-use Debian based images for PHP 5.5, 5.6, 7.0, 7.1, 7.2, 7.3 and 7.4 with CLI or FPM and Composer preinstalled.
</p>

<p align=center>
    Trying to follow the latest releases with official PHP.
</p>

<p align=center>
🕹 <a href="https://f3l1x.io">f3l1x.io</a> | 💻 <a href="https://github.com/f3l1x">f3l1x</a> | 🐦 <a href="https://twitter.com/xf3l1x">@xf3l1x</a>
</p>

<p align=center>
    <a href="https://hub.docker.com/r/dockette/php/"><img src="https://img.shields.io/docker/stars/dockette/php.svg?style=flat-square"></a>
    <a href="https://hub.docker.com/r/dockette/php/"><img src="https://img.shields.io/docker/pulls/dockette/php.svg?style=flat-square"></a>
    <a href="https://bit.ly/ctteg"><img src="https://img.shields.io/gitter/room/contributte/contributte.svg?style=flat-square"></a>
    <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-me-brightgreen?style=flat-square"></a>
</p>

-----

## Usage

```
docker run -v /path/to/site:/srv dockette/php:7.4
docker run -v /path/to/site:/srv dockette/php:7.4-fpm
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

**Base image**

```Dockerfile
FROM dockette/php:7.4-fpm

RUN apt update && apt install -y curl 
```

## Documentation

### Linux packages

These images have preinstalled couple of linux packages: apt-transport-https ca-certificates git.

### PHP extensions

These images have preinstalled couple of PHP extensions: apc, apcu, bcmath, bz2, calendar, cgi, cli, ctype, curl, fpm (in*-fpm), geoip, gettext, gd, intl, imagick, imap, ldap, mbstring, mcrypt (<7.2), memcached, mongo, mysql, pdo, pgsql redis, soap, sqlite3, ssh2 (<7.2), xmlrpc, xsl, zip.

### Composer

![Composer](https://avatars3.githubusercontent.com/u/837015?v=3&s=200)

This super image has also preinstalled [Composer](https://getcomposer.org).

### Customization

In case of customization PHP 5.6 - 7.4:

- /etc/php/{5.6,7.0,7.1,7.2,7.3,7.4}/{cli,cgi,fpm}/conf.d/991-custom.ini

In case of customization PHP 5.5:

- /etc/php5/{cli,cgi,fpm}/conf.d/991-custom.ini

## Development

See [how to contribute](https://contributte.org/contributing.html) to this package.

This package is currently maintaining by these authors.

<a href="https://github.com/f3l1x">
    <img width="80" height="80" src="https://avatars2.githubusercontent.com/u/538058?v=3&s=80">
</a>

-----

Consider to [support](https://contributte.org/partners.html) **dockette** development team.
Also thank you for using this package.
