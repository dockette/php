DOCKER_IMAGE=dockette/php
DOCKER_PLATFORM?=linux/amd64
VERSION?=8.5

.PHONY: build test run test-cli-% test-fpm-% test-pcov-%

build: build-${VERSION}

test: test-cli-${VERSION} test-fpm-${VERSION}

run:
	docker run --rm -it -v ${PWD}:/srv ${DOCKER_IMAGE}:${VERSION}

_build-%: VERSION=$*
_build-%:
	docker buildx \
		build \
		--platform ${DOCKER_PLATFORM} \
		--pull \
		-t ${DOCKER_IMAGE}:${VERSION} \
		./${VERSION}

build-5.6: _build-5.6
build-5.6-fpm: _build-5.6-fpm
build-7.0: _build-7.0
build-7.0-fpm: _build-7.0-fpm
build-7.1: _build-7.1
build-7.1-fpm: _build-7.1-fpm
build-7.2: _build-7.2
build-7.2-fpm: _build-7.2-fpm
build-7.3: _build-7.3
build-7.3-fpm: _build-7.3-fpm
build-7.4: _build-7.4
build-7.4-fpm: _build-7.4-fpm
build-8.0: _build-8.0
build-8.0-fpm: _build-8.0-fpm
build-8.1: _build-8.1
build-8.1-fpm: _build-8.1-fpm
build-8.2: _build-8.2
build-8.2-fpm: _build-8.2-fpm
build-8.3: _build-8.3
build-8.3-fpm: _build-8.3-fpm
build-8.4: _build-8.4
build-8.4-fpm: _build-8.4-fpm
build-8.5: _build-8.5
build-8.5-fpm: _build-8.5-fpm

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
