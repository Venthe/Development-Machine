#!/usr/bin/env bash
cat /root/extension.txt | xargs -n 1 code-server --install-extension

# apt-get install haskell-platform
# git clone "$GIT_ADDR" .
# git reset --hard "$GIT_HASH"
# git init

# code-server --disable-telemetry
# code-server --disable-update-check
code-server /repositories
