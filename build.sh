#!/bin/sh
docker build . -t docker-htsp:almost
docker-squash  -t "docker-htsp:latest" "docker-htsp:almost"
docker save -o docker-htsp.tar "docker-htsp:latest"

gzip -f docker-htsp.tar
 
