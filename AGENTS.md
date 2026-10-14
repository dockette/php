# Dockette / PHP

PHP CLI and FPM images with Composer and common extensions, one tag per PHP version.

## Stack

- Docker image built with `docker buildx`, base `dockette/debian:bookworm`
- PHP 5.6 to 8.5 from packages.sury.org, each as CLI and `-fpm`, with Composer
- Published to Docker Hub as `dockette/php` by GitHub Actions

## Development

```bash
make build       # build the image (VERSION=8.5)
make test        # smoke test the CLI and FPM images (VERSION=8.5)
make run         # run it locally with the current folder in /srv
make build-8.4   # build one version; also build-8.4-fpm
```

`make build VERSION=8.4` builds one version. Run `make` to list every target.

## Principles

- KISS: one image does one job; no extra services or tools.
- DRY: shared steps live in the base image, not copied into every Dockerfile.
- YAGNI: add a package only when the image needs it.
- Pin versions, keep layers small, clean package caches in the same `RUN`.
- Every change is built and smoke tested with `make build test` before a commit.
