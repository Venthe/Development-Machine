#!/usr/bin/env bash

set -o errexit

DOCKERVERSION="${DOCKERVERSION:-20.10.7}"

curl --fail \
    --silent \
    --show-error \
    --location \
    --remote-name "https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz"
tar --extract \
    --gzip \
    --verbose \
    --file="docker-${DOCKERVERSION}.tgz" \
    --strip 1 \
    --directory="/usr/local/bin" \
    "docker/docker"
rm "docker-${DOCKERVERSION}.tgz"
