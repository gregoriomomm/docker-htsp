#!/bin/sh
docker build . -t docker-htps:almost
docker-squash  -t "docker-htps:latest" "docker-htps:almost"
docker save -o docker-htps.tar "docker-htps:latest"

gzip -f docker-htps.tar
 