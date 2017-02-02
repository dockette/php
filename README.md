# PHP

Ready-to-use images for PHP 5.6 / 7.0 / 7.1.

-----

[![Docker Stars](https://img.shields.io/docker/stars/dockette/alpine.svg?style=flat)](https://hub.docker.com/r/dockette/alpine/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/alpine.svg?style=flat)](https://hub.docker.com/r/dockette/alpine/)

## Discussion / Help

[![Join the chat](https://img.shields.io/gitter/room/dockette/dockette.svg?style=flat-square)](https://gitter.im/dockette/dockette?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Image

This image has preinstalled couple of PHP extensions. Let's take a look.

| 5.6       | 5.6+FPM   | 7.0       | 7.0+FPM   | 7.1       | 7.1+FPM   |
|-----------|-----------|-----------|-----------|-----------|-----------|
| apcu      | apcu      | apcu      | apcu      | apcu      | apcu      |
| bz2       | bz2       | bz2       | bz2       | bz2       | bz2       |
| cgi       | cgi       | cgi       | cgi       | cgi       | cgi       |
| cli       | cli       | cli       | cli       | cli       | cli       |
| curl      | curl      | curl      | curl      | curl      | curl      |
| geoip     | geoip     | geoip     | geoip     | geoip     | geoip     |
| gd        | gd        | gd        | gd        | gd        | gd        |
| -         | fpm       | -         | fpm       | -         | fpm       |
| intl      | intl      | intl      | intl      | intl      | intl      |
| imagick   | imagick   | imagick   | imagick   | imagick   | imagick   |
| imap      | imap      | imap      | imap      | imap      | imap      |
| ldap      | ldap      | ldap      | ldap      | ldap      | ldap      |
| mcrypt    | mcrypt    | mcrypt    | mcrypt    | mcrypt    | mcrypt    |
| memcached | memcached | memcached | memcached | memcached | memcached |
| mongo     | mongo     | mongo     | mongo     | mongo     | mongo     |
| mysql     | mysql     | mysql     | mysql     | mysql     | mysql     |
| pgsql     | pgsql     | pgsql     | pgsql     | pgsql     | pgsql     |
| redis     | redis     | redis     | redis     | redis     | redis     |
| soap      | soap      | soap      | soap      | soap      | soap      |
| sqlite    | sqlite    | sqlite    | sqlite    | sqlite    | sqlite    |
| ssh2      | ssh2      | ssh2      | ssh2      | ssh2      | ssh2      |
| xmlrpc    | xmlrpc    | xmlrpc    | xmlrpc    | xmlrpc    | xmlrpc    |
| xsl       | xsl       | xls       | xls       | xsl       | xsl       |

## Customizing

You can easily customize this image by adding extra INI file to righ place.

#### `PHP 5.5`

- /etc/php5.5/cli/conf.d/991-custom.ini
- /etc/php5.5/cgi/conf.d/991-custom.ini
- /etc/php5.5/fpm/conf.d/991-custom.ini

#### `PHP 5.6`

- /etc/php5.6/cli/conf.d/991-custom.ini
- /etc/php5.6/cgi/conf.d/991-custom.ini
- /etc/php5.6/fpm/conf.d/991-custom.ini

#### `PHP 7.0`

- /etc/php/7.0/cli/conf.d/991-custom.ini
- /etc/php/7.0/cgi/conf.d/991-custom.ini
- /etc/php/7.0/fpm/conf.d/991-custom.ini

#### `PHP 7.1`

- /etc/php/7.1/cli/conf.d/991-custom.ini
- /etc/php/7.1/cgi/conf.d/991-custom.ini
- /etc/php/7.1/fpm/conf.d/991-custom.ini

## Composer

![Composer](https://avatars3.githubusercontent.com/u/837015?v=3&s=200)

This super image has also preinstalled [Composer](https://getcomposer.org) with ultra fast plugin [prestissimo](https://github.com/hirak/prestissimo).

## Usage

### 7.1

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php71.svg?style=flat)](https://hub.docker.com/r/dockette/php70/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php71.svg?style=flat)](https://hub.docker.com/r/dockette/php70/)

```
docker run -v /path/to/site:/srv dockette/php71
```

```
docker run -v /path/to/site:/srv dockette/php:7.1
```

### 7.1 + FPM

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php71-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php71-fpm/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php71-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php71-fpm/)

```
docker run -v /path/to/site:/srv dockette/php71-fpm
```

```
docker run -v /path/to/site:/srv dockette/php:7.1-fpm
```

### 7.0

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php70.svg?style=flat)](https://hub.docker.com/r/dockette/php70/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php70.svg?style=flat)](https://hub.docker.com/r/dockette/php70/)

```
docker run -v /path/to/site:/srv dockette/php70
```

```
docker run -v /path/to/site:/srv dockette/php:7.0
```

### 7.0 + FPM

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php7-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php7-fpm/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php7-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php7-fpm/)

```
docker run -v /path/to/site:/srv dockette/php70-fpm
```

```
docker run -v /path/to/site:/srv dockette/php:7.0-fpm
```

### 5.6

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php56.svg?style=flat)](https://hub.docker.com/r/dockette/php56/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php56.svg?style=flat)](https://hub.docker.com/r/dockette/php56/)

```
docker run -v /path/to/site:/srv dockette/php56
```

```
docker run -v /path/to/site:/srv dockette/php:5.6
```

### 5.6 + FPM

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php56-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php56-fpm/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php56-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php56-fpm/)

```
docker run -v /path/to/site:/srv dockette/php56-fpm
```

```
docker run -v /path/to/site:/srv dockette/php:5.6-fpm
```

### 5.5

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php55.svg?style=flat)](https://hub.docker.com/r/dockette/php55/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php55.svg?style=flat)](https://hub.docker.com/r/dockette/php55/)

```
docker run -v /path/to/site:/srv dockette/php55
```

```
docker run -v /path/to/site:/srv dockette/php:5.5
```

### 5.5 + FPM

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php55-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php55-fpm/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php55-fpm.svg?style=flat)](https://hub.docker.com/r/dockette/php55-fpm/)

```
docker run -v /path/to/site:/srv dockette/php55-fpm
```

```
docker run -v /path/to/site:/srv dockette/php:5.5-fpm
```