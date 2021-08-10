FROM workstation-base:latest

RUN apt-get install haskell-platform --assume-yes
RUN code-server --install-extension haskell.haskell