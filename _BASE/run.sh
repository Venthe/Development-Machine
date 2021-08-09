#!/usr/bin/env bash
# --volume="`pwd`/userdir:/root/.local/share/code-server" \
docker run \
--interactive \
--tty \
--rm \
--volume='/var/run/docker.sock:/var/run/docker.sock' \
--publish='80:8081' \
--env GIT_ADDR=https://github.com/Venthe/Personal-Development-Pipeline.git \
--env GIT_HASH=e9da8beb259786d57a75f5d86158a75dfba158f6 \
workstation-haskell