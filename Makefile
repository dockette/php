DOCKER_IMAGE=dockette/php

_docker-build-%: VERSION=$*
_docker-build-%:
	docker build \
		--pull \
		-t ${DOCKER_IMAGE}:${VERSION} \
		./${VERSION}

docker-build-5.6: _docker-build-5.6
docker-build-5.6-fpm: _docker-build-5.6-fpm
docker-build-7.0: _docker-build-7.0
docker-build-7.0-fpm: _docker-build-7.0-fpm
docker-build-7.1: _docker-build-7.1
docker-build-7.1-fpm: _docker-build-7.1-fpm
docker-build-7.2: _docker-build-7.2
docker-build-7.2-fpm: _docker-build-7.2-fpm
docker-build-7.3: _docker-build-7.3
docker-build-7.3-fpm: _docker-build-7.3-fpm
docker-build-7.4: _docker-build-7.4
docker-build-7.4-fpm: _docker-build-7.4-fpm
docker-build-8.0: _docker-build-8.0
docker-build-8.0-fpm: _docker-build-8.0-fpm
docker-build-8.1: _docker-build-8.1
docker-build-8.1-fpm: _docker-build-8.1-fpm
docker-build-8.2: _docker-build-8.2
docker-build-8.2-fpm: _docker-build-8.2-fpm

