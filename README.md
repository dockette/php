<h1 align=center>Dockette / PHP</h1>

<p align=center>
   <a href="https://github.com/dockette/php/actions"><img src="https://github.com/dockette/php/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/r/dockette/php"><img src="https://img.shields.io/docker/pulls/dockette/php.svg" alt="Docker Hub pulls"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

<p align=center>
   PHP 5.6 to 8.5 CLI and FPM images on Debian Bookworm, with <a href="https://getcomposer.org">Composer</a> 2 and about 25 extensions installed. PHP comes from the <a href="https://deb.sury.org">Sury</a> packages. For running PHP tools and applications in CI and local development, and as a base for your own images.
</p>

<p align=center>
🕹 <a href="https://f3l1x.io">f3l1x.io</a> | 💻 <a href="https://github.com/f3l1x">f3l1x</a> | 🐦 <a href="https://twitter.com/xf3l1x">@xf3l1x</a>
</p>

-----

## Usage

Mount your project in `/srv` and run a command in it:

```sh
docker run -v "$(pwd)":/srv dockette/php:8.5 composer install
```

The image adds Composer 2, about 25 extensions and a `custom.ini` with PHP limits and the `Europe/Prague` time
zone. The `-fpm` tags run PHP-FPM with one FastCGI pool on port `9000` and `open_basedir` set to
`/data:/srv:/var/tmp:/tmp`; mount your own `.ini` file into `/etc/php/8.5/cli/conf.d` or
`/etc/php/8.5/fpm/conf.d` to change a setting, see the [PHP configuration reference](https://www.php.net/manual/en/ini.list.php).

## Versions

Every version has a CLI tag and an `-fpm` tag. Each is built for `linux/amd64` and `linux/arm64` and rebuilt
every Monday. There is no `latest` tag; pin a version.

| Tag | Base | Upstream EOL | State |
|-----|------|--------------|-------|
| `dockette/php:8.5`, `dockette/php:8.5-fpm` | `dockette/debian:bookworm` | 2029-12-31 | Supported |
| `dockette/php:8.4`, `dockette/php:8.4-fpm` | `dockette/debian:bookworm` | 2028-12-31 | Supported |
| `dockette/php:8.3`, `dockette/php:8.3-fpm` | `dockette/debian:bookworm` | 2027-12-31 | Supported |
| `dockette/php:8.2`, `dockette/php:8.2-fpm` | `dockette/debian:bookworm` | 2026-12-31 | Supported |
| `dockette/php:8.1`, `dockette/php:8.1-fpm` | `dockette/debian:bookworm` | 2025-12-31 | Legacy (EOL runtime) |
| `dockette/php:8.0`, `dockette/php:8.0-fpm` | `dockette/debian:bookworm` | 2023-11-26 | Legacy (EOL runtime) |
| `dockette/php:7.4`, `dockette/php:7.4-fpm` | `dockette/debian:bookworm` | 2022-11-28 | Legacy (EOL runtime) |
| `dockette/php:7.3`, `dockette/php:7.3-fpm` | `dockette/debian:bookworm` | 2021-12-06 | Legacy (EOL runtime) |
| `dockette/php:7.2`, `dockette/php:7.2-fpm` | `dockette/debian:bookworm` | 2020-11-30 | Legacy (EOL runtime) |
| `dockette/php:7.1`, `dockette/php:7.1-fpm` | `dockette/debian:bookworm` | 2019-12-01 | Legacy (EOL runtime) |
| `dockette/php:7.0`, `dockette/php:7.0-fpm` | `dockette/debian:bookworm` | 2019-01-10 | Legacy (EOL runtime) |
| `dockette/php:5.6`, `dockette/php:5.6-fpm` | `dockette/debian:bookworm` | 2018-12-31 | Legacy (EOL runtime) |

> [!WARNING]
> PHP 8.1 and older get no security fixes from upstream. The Legacy tags keep building while Debian Bookworm is
> supported; use them only to run old code.

## Packages

The images include `apt-transport-https`, `ca-certificates`, `git`, `unzip` and Composer 2 in
`/usr/local/bin/composer`. Every version has the `cli`, `cgi` and `phpdbg` SAPIs; the `-fpm` tags add `fpm`.

The extensions per version:

| Extension | 5.6 | 7.0 | 7.1 | 7.2 | 7.3 | 7.4 | 8.0 | 8.1 | 8.2 | 8.3 | 8.4 | 8.5 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| apcu | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| bcmath | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| bz2 | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| calendar | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| ctype | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| curl | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| gd | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| geoip | yes | yes | yes | yes | yes | yes | - | - | - | - | - | - |
| gettext | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| imagick | yes | yes | yes | - | - | - | - | - | - | - | - | - |
| imap | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| intl | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| ldap | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| mbstring | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| mcrypt | yes | yes | yes | - | - | - | - | - | - | - | - | - |
| memcached | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| mysql | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| pcov | - | - | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| pdo | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| pgsql | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| redis | yes | yes | yes | yes | yes | yes | yes | yes | - | - | - | - |
| soap | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| sqlite3 | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| ssh2 | yes | yes | yes | yes | - | - | - | - | - | - | - | - |
| xmlrpc | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| xsl | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |
| zip | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes | yes |

## Development

```sh
make build   # build the image (VERSION=8.5)
make test    # smoke test the CLI and FPM image
make run     # run it with the current folder in /srv
```

Run `make` to list every target.

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider [supporting](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
