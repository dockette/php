# PHP

[![Docker Stars](https://img.shields.io/docker/stars/dockette/php.svg?style=flat)](https://hub.docker.com/r/dockette/php/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/php.svg?style=flat)](https://hub.docker.com/r/dockette/php/)

Run PHP 5.6 / 7.0 in Docker container

## Usage

### 5.6

```sh
docker run \
    -v /path/to/site:/var/www
    --name php56 \
    dockette/php:5.6
```

### 7.0 (alias latest)

```sh
docker run \
    -v /path/to/site:/var/www
    --name php70 \
    dockette/php:7.0
```

