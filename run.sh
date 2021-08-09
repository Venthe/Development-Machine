#!/usr/bin/env bash
docker run \
--interactive \
--tty \
--rm \
--volume="`pwd`/extension.txt:/root/extension.txt" \
--volume="`pwd`/start.sh:/root/start.sh" \
--volume="`pwd`/userdir:/root/.local/share/code-server" \
--volume='/var/run/docker.sock:/var/run/docker.sock' \
--publish='8080:8080' \
--env SERVICE_URL=https://marketplace.visualstudio.com/_apis/public/gallery \
--env ITEM_URL=https://marketplace.visualstudio.com/items \
--env GIT_ADDR=https://github.com/Venthe/Personal-Development-Pipeline.git \
--env GIT_HASH=e9da8beb259786d57a75f5d86158a75dfba158f6 \
workstation 