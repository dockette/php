DOCKER_IMAGE=dockette/php

_build-%: VERSION=$*
_build-%:
	docker build \
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