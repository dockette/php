# Dockette / PHP

Instructions for AI coding agents working in this repository.

## Overview

`dockette/php` builds Debian based PHP images with the CLI or FPM, Composer and about 25 extensions. It is a
runtime image (see IMAGES.md), the base for `dockette/deploy` and other tools. It ships no application code and
no web server.

- **Image**: `dockette/php`, tags `5.6` to `8.5`, each also as `-fpm`. CI publishes no `latest` tag
- **Base**: `dockette/debian:bookworm` for every tag, PHP packages from `packages.sury.org`
- **Platforms**: `linux/amd64`, `linux/arm64` in CI (reusable workflow default); `make build` builds `linux/amd64`
- **Layout**: one folder per tag (`8.5/`, `8.5-fpm/`), each with its own `Dockerfile` and `conf.d/custom.ini`;
  FPM folders also have `fpm/php-fpm.conf`

## Documentation

- `README.md` lists every tag and the extensions per version, and is the Docker Hub description; the `docs` job
  publishes it from `master`.
- Supported versions and the deprecation steps are in
  [IMAGES.md](https://github.com/dockette/dockette/blob/master/specs/IMAGES.md).

## Commands

```bash
# Build one image; VERSION defaults to 8.5
make build
make build VERSION=8.5-fpm
make build VERSION=8.4

# Test the CLI and FPM image of one version (both must be built first)
make test
make test VERSION=8.4

# Run the CLI image with the current folder mounted in /srv
make run
```

`make help` lists every per-tag target (`build-8.4`, `build-8.4-fpm`, ...). There is no `build-all`, `test-all`
or `push`. CI tests only `8.5` and `8.5-fpm`: it builds each with `docker/build-push-action` and runs
`make test-cli-8.5` or `make test-fpm-8.5`. The `build` job then builds all 24 tags with the reusable workflow and
pushes from `master` only.

## Conventions

- Binaries are versioned: `php8.5`, `php-fpm8.5`. `conf.d/custom.ini` is copied to `mods-available/` and linked as
  `999-custom.ini` into the CLI, CGI (and FPM) `conf.d` folders.
- A new PHP version is a new folder pair, a `build-*` target pair in the `Makefile`, two matrix entries in
  `.github/workflows/docker.yml` and a README row and column. Move `VERSION?=` and the CI `test` matrix to it.
- Smoke tests live in the `Makefile` (`test-cli-%`, `test-fpm-%`, `test-pcov-%`). The workflow only calls them;
  add new checks there, not as workflow steps.

## Traps

- **Every version folder is a full copy.** There is no shared template; `8.4/Dockerfile` and `8.5/Dockerfile`
  differ only in the version number. A change for all versions is made in all 24 folders.
- **`make test` takes a base version, not a tag.** It tests `${VERSION}` and `${VERSION}-fpm`, so
  `make test VERSION=8.4-fpm` looks for `8.4-fpm-fpm`. Build both images of a version before `make test`.
- **PHP comes from `packages.sury.org`, not from the official `php` image.** Extension names are Debian packages
  (`php8.5-intl`), not `docker-php-ext-install`. The set differs per version (`redis` up to 8.1, `ssh2` up to 7.2,
  `geoip` up to 7.4); keep the README extension table in sync with the Dockerfiles.
- **`pcov` is required from PHP 7.1 up.** `test-pcov-%` fails when it is missing; `5.6` and `7.0` are expected
  not to have it.
- **`5.6` to `8.1` are Legacy.** They build while Bookworm is supported and must be marked EOL in the README.
  Don't add features to them; fix only what breaks the build.
- **`custom.ini` sets `memory_limit = 521M`, 256 MB uploads and `Europe/Prague`.** The Dockerfile also sets
  `TZ=Europe/Prague`. Users rely on these defaults; change them in all 24 folders or not at all.
- **The FPM pool is ours, not Debian's.** `www.conf` is deleted and `fpm/php-fpm.conf` listens on `[::]:9000` as
  `www-data`, with `open_basedir` limited to `/data:/srv:/var/tmp:/tmp` and `clear_env = yes`.
- **Composer comes from `getcomposer.org/installer` piped to `php`.** It is Composer 2 and not pinned to a minor
  version; each weekly rebuild takes the current release.
- **Child images depend on these tags.** After changing a tag used by `dockette/deploy`, trigger its workflow by
  hand instead of waiting for the Monday rebuild.
- Usage for image users (volumes, FPM setup, Composer, extensions) lives in `README.md`, not here.
