#!/usr/bin/env bash

set -o errexit

if [ -z ${CODE_EXTENSIONS} ]; then
  printf "${CODE_EXTENSIONS}" | xargs -d "," -n1 code-server --install-extension
fi

if [ -z ${GIT_ADDR} ]; then
    git clone "${GIT_ADDR}" .
    if [-z ${GIT_HASH}]; then
        git reset --hard "${GIT_HASH}"
    fi
fi

# TODO: Disable telemetry
# TODO: Disable update check
code-server /repositories
