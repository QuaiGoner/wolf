#!/bin/bash
set -e

#echo 'Cleaning docker images'
#docker image prune -f
#docker system prune --all --volumes --force

echo 'Building docker image'
docker build --build-arg BASE_IMAGE=ghcr.io/games-on-whales/gstreamer:1.22.0 -t wolf_merged101 -f docker/wolf.Dockerfile .