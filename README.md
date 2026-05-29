<h1 align=center>Dockette / PHP</h1>

<p align=center>
   Ready-to-use Debian based images for PHP 5.6-8.5 with CLI or FPM and Composer preinstalled.
</p>

<p align=center>
    Trying to follow the latest releases with official PHP.
</p>

<p align=center>
🕹 <a href="https://f3l1x.io">f3l1x.io</a> | 💻 <a href="https://github.com/f3l1x">f3l1x</a> | 🐦 <a href="https://twitter.com/xf3l1x">@xf3l1x</a>
</p>

<p align=center>
   <a href="https://github.com/dockette/php/actions"><img src="https://github.com/dockette/php/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/r/dockette/php"><img src="https://img.shields.io/docker/pulls/dockette/php.svg" alt="Docker Hub pulls"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

-----

## Usage

```
docker run -v /path/to/site:/srv dockette/php:8.5
docker run -v /path/to/site:/srv dockette/php:8.5-fpm
docker run -v /path/to/site:/srv dockette/php:8.4
docker run -v /path/to/site:/srv dockette/php:8.4-fpm
docker run -v /path/to/site:/srv dockette/php:8.3
docker run -v /path/to/site:/srv dockette/php:8.3-fpm
docker run -v /path/to/site:/srv dockette/php:8.2
docker run -v /path/to/site:/srv dockette/php:8.2-fpm
docker run -v /path/to/site:/srv dockette/php:8.1
docker run -v /path/to/site:/srv dockette/php:8.1-fpm
docker run -v /path/to/site:/srv dockette/php:8.0
docker run -v /path/to/site:/srv dockette/php:8.0-fpm
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
```

**Base image**

```Dockerfile
FROM dockette/php:8.5-fpm

RUN apt update && apt install -y curl
```

## Documentation

### Linux packages

These images have preinstalled couple of linux packages: apt-transport-https ca-certificates git.

### PHP extensions

These images have preinstalled couple of PHP extensions: apcu, bcmath, bz2, calendar, cgi, cli, ctype, curl, fpm (in*-fpm), geoip, gettext, gd, intl, imagick, imap, ldap, mbstring, mcrypt (<7.2), memcached, mysql, pdo, pgsql redis, soap, sqlite3, ssh2 (<7.2), xmlrpc, xsl, zip.

### Composer

![Composer](https://avatars3.githubusercontent.com/u/837015?v=3&s=200)

This super image has also preinstalled [Composer](https://getcomposer.org).

### Customization

In case of customization PHP 5.6 - 8.5:

- /etc/php/{5.6-8.5}/{cli,cgi,fpm}/conf.d/991-custom.ini

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
