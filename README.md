# PHP

Ready-to-use images for PHP 5.6 / 7.0 / 7.1.

-----

[![Docker Stars](https://img.shields.io/docker/stars/dockette/alpine.svg?style=flat)](https://hub.docker.com/r/dockette/alpine/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/alpine.svg?style=flat)](https://hub.docker.com/r/dockette/alpine/)

## Discussion / Help

[![Join the chat](https://img.shields.io/gitter/room/dockette/dockette.svg?style=flat-square)](https://gitter.im/contributte/contributte?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Image

This image has preinstalled couple of PHP extensions. Let's take a look.

| 5.6       | 5.6+FPM   | 7.0       | 7.0+FPM   |
|-----------|-----------|-----------|-----------|
| -         | -         | apcu      | apcu      |
| -         | -         | bz2       | bz2       |
| cgi       | cgi       | cgi       | cgi       |
| cli       | cli       | cli       | cli       |
| curl      | curl      | curl      | curl      |
| geoip     | geoip     | geoip     | geoip     |
| gd        | gd        | gd        | gd        |
| -         | fpm       | -         | fpm       |
| intl      | intl      | intl      | intl      |
| imagick   | imagick   | imagick   | imagick   |
| imap      | imap      | imap      | imap      |
| ldap      | ldap      | ldap      | ldap      |
| mcrypt    | mcrypt    | mcrypt    | mcrypt    |
| memcached | memcached | memcached | memcached |
| mongo     | mongo     | mongo     | mongo     |
| mysql     | mysql     | mysql     | mysql     |
| pgsql     | pgsql     | pgsql     | pgsql     |
| redis     | redis     | redis     | redis     |
|           |           | soap      | soap      |
| sqlite    | sqlite    | sqlite    | sqlite    |
| ssh2      | ssh2      | ssh2      | ssh2      |
| xmlrpc    | xmlrpc    | xmlrpc    | xmlrpc    |
| xsl       | xsl       | xls       | xls       |

## Customizing

You can easily customize this image by adding extra INI file to righ place.

#### `PHP 5.6`

- /etc/php5/cli/conf.d/991-custom.ini
- /etc/php5/cgi/conf.d/991-custom.ini
- /etc/php5/fpm/conf.d/991-custom.ini

#### `PHP 5.6`

- /etc/php/7.0/cli/conf.d/991-custom.ini
- /etc/php/7.0/cgi/conf.d/991-custom.ini
- /etc/php/7.0/fpm/conf.d/991-custom.ini

## Composer

![Composer](https://avatars3.githubusercontent.com/u/837015?v=3&s=200)

This super image has also preinstalled [Composer](https://getcomposer.org) with ultra fast plugin [prestissimo](https://github.com/hirak/prestissimo).

## Usage

### 5.6

```sh
docker run \
    -v /path/to/site:/srv
    --name php56 \
    dockette/php:5.6
```
### 5.6 + FPM

```sh
docker run \
    -v /path/to/site:/srv
    --name php56 \
    dockette/php:5.6-fpm
```

### 7.0

```sh
docker run \
    -v /path/to/site:/srv
    --name php70 \
    dockette/php:7.0
```

### 7.0 + FPM

```sh
docker run \
    -v /path/to/site:/srv
    --name php70 \
    dockette/php:7.0-fpm
```
