# PHP

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php.svg?style=flat)](https://hub.docker.com/r/dockette/php/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php.svg?style=flat)](https://hub.docker.com/r/dockette/php/)

## Image

### Packages

- wget
- curl

### PHP modules

- cli
- cgi
- fpm
- curl
- imap
- pgsql
- mysql
- sqlite
- gd
- mcrypt

### PHPMailer

- [PHPMailer](https://gist.githubusercontent.com/f3l1x/d6f02fc3b498e33059e8876a73e9ae13/raw/e3011357d082f3810c3d8d1f57427e36525dc30f/phpmailer)

## 5.6

```sh
docker run \
    -v /path/to/site:/srv
    --name php56 \
    dockette/php:5.6
```
## 5.6 + FPM

```sh
docker run \
    -v /path/to/site:/srv
    --name php56 \
    dockette/php:5.6-fpm
```

## 7.0

```sh
docker run \
    -v /path/to/site:/srv
    --name php70 \
    dockette/php:7.0
```

## 7.0 + FPM

```sh
docker run \
    -v /path/to/site:/srv
    --name php70 \
    dockette/php:7.0-fpm
```
