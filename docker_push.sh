#!/usr/bin/env bash

docker login -u $DOCKER_USER -p $DOCKER_PASS
export REPO=wwwthoughtworks/build-your-own-radar
export TAG=latest
docker build -f Dockerfile -t $REPO:$COMMIT .
docker tag $REPO:$COMMIT $REPO:$TAG
docker push $REPO