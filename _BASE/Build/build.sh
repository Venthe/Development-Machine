#!/usr/bin/env bash

set -o errexit

docker build . --tag "workstation-base:latest"
docker build . --file ./haskell.Dockerfile --tag "workstation-haskell:latest"