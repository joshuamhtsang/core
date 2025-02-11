#!/bin/sh

docker stop core
docker system prune
docker ps -a