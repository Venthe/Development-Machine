FROM docker.io/ubuntu:20.10

RUN apt-get update
RUN apt-get install --assume-yes \
 git \
 curl

ENV DOCKERVERSION=20.10.7
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
                 -C /usr/local/bin docker/docker \
  && rm docker-${DOCKERVERSION}.tgz

RUN curl -fsSL https://code-server.dev/install.sh | sh

ADD ./config.yaml /root/.config/code-server/config.yaml
ADD ./start.sh /root/start.sh

RUN apt-get install haskell-platform --assume-yes

WORKDIR /repositories

ENTRYPOINT /root/start.sh