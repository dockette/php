DOCKER_IMAGE=dockette/php
DOCKER_PLATFORM?=linux/amd64
VERSION?=8.5

.DEFAULT_GOAL := help

##@ Help

.PHONY: help
help: ## Show this help
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: make \033[36m<target>\033[0m\n"} /^[a-zA-Z0-9_.-]+:.*##/ { sub(/^ +/, "", $$2); printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) }' $(firstword $(MAKEFILE_LIST))

##@ Docker

.PHONY: build
build: build-${VERSION} ## Build one image (VERSION=8.5 or VERSION=8.5-fpm)

.PHONY: test
test: test-cli-${VERSION} test-fpm-${VERSION} ## Test the CLI and FPM images of VERSION (VERSION=8.5, no -fpm)

.PHONY: run
run: ## Run the image with the current folder in /srv (VERSION=8.5)
	docker run --rm -it -v ${PWD}:/srv ${DOCKER_IMAGE}:${VERSION}

_build-%: VERSION=$*
_build-%:
	docker buildx \
		build \
		--platform ${DOCKER_PLATFORM} \
		--pull \
		-t ${DOCKER_IMAGE}:${VERSION} \
		./${VERSION}

test-cli-%:
	docker run --rm ${DOCKER_IMAGE}:$* sh -lc 'php -v && composer --version'
	${MAKE} test-pcov-$*

test-fpm-%:
	docker run --rm ${DOCKER_IMAGE}:$*-fpm sh -lc 'php -v && composer --version && php-fpm$* -t'
	${MAKE} test-pcov-$*-fpm

# pcov requires PHP >= 7.1, older images are expected not to have it
test-pcov-%:
	docker run --rm ${DOCKER_IMAGE}:$* php -r 'exit(PHP_VERSION_ID < 70100 || extension_loaded("pcov") ? 0 : 1);' \
		|| { echo "ERROR: pcov is not loaded in ${DOCKER_IMAGE}:$*" >&2; exit 1; }

##@ Versions

.PHONY: build-5.6
build-5.6: _build-5.6 ## Build the PHP 5.6 CLI image

.PHONY: build-5.6-fpm
build-5.6-fpm: _build-5.6-fpm ## Build the PHP 5.6 FPM image

.PHONY: build-7.0
build-7.0: _build-7.0 ## Build the PHP 7.0 CLI image

.PHONY: build-7.0-fpm
build-7.0-fpm: _build-7.0-fpm ## Build the PHP 7.0 FPM image

.PHONY: build-7.1
build-7.1: _build-7.1 ## Build the PHP 7.1 CLI image

.PHONY: build-7.1-fpm
build-7.1-fpm: _build-7.1-fpm ## Build the PHP 7.1 FPM image

.PHONY: build-7.2
build-7.2: _build-7.2 ## Build the PHP 7.2 CLI image

.PHONY: build-7.2-fpm
build-7.2-fpm: _build-7.2-fpm ## Build the PHP 7.2 FPM image

.PHONY: build-7.3
build-7.3: _build-7.3 ## Build the PHP 7.3 CLI image

.PHONY: build-7.3-fpm
build-7.3-fpm: _build-7.3-fpm ## Build the PHP 7.3 FPM image

.PHONY: build-7.4
build-7.4: _build-7.4 ## Build the PHP 7.4 CLI image

.PHONY: build-7.4-fpm
build-7.4-fpm: _build-7.4-fpm ## Build the PHP 7.4 FPM image

.PHONY: build-8.0
build-8.0: _build-8.0 ## Build the PHP 8.0 CLI image

.PHONY: build-8.0-fpm
build-8.0-fpm: _build-8.0-fpm ## Build the PHP 8.0 FPM image

.PHONY: build-8.1
build-8.1: _build-8.1 ## Build the PHP 8.1 CLI image

.PHONY: build-8.1-fpm
build-8.1-fpm: _build-8.1-fpm ## Build the PHP 8.1 FPM image

.PHONY: build-8.2
build-8.2: _build-8.2 ## Build the PHP 8.2 CLI image

.PHONY: build-8.2-fpm
build-8.2-fpm: _build-8.2-fpm ## Build the PHP 8.2 FPM image

.PHONY: build-8.3
build-8.3: _build-8.3 ## Build the PHP 8.3 CLI image

.PHONY: build-8.3-fpm
build-8.3-fpm: _build-8.3-fpm ## Build the PHP 8.3 FPM image

.PHONY: build-8.4
build-8.4: _build-8.4 ## Build the PHP 8.4 CLI image

.PHONY: build-8.4-fpm
build-8.4-fpm: _build-8.4-fpm ## Build the PHP 8.4 FPM image

.PHONY: build-8.5
build-8.5: _build-8.5 ## Build the PHP 8.5 CLI image

.PHONY: build-8.5-fpm
build-8.5-fpm: _build-8.5-fpm ## Build the PHP 8.5 FPM image
