FROM docker.io/ubuntu:20.10

RUN apt-get update
RUN apt-get install --assume-yes \
 git \
 curl

# Install docker
ADD ./install-docker-client.sh /root/
RUN ./root/install-docker-client.sh
VOLUME /var/run/docker.sock

# Install vscode-server
RUN curl --fail --silent --show-error --location https://code-server.dev/install.sh | sh
ADD ./config.yaml /root/.config/code-server/config.yaml
EXPOSE 80
VOLUME /root/.local/share/code-server
ENV SERVICE_URL https://marketplace.visualstudio.com/_apis/public/gallery
ENV ITEM_URL https://marketplace.visualstudio.com/items

ADD ./entrypoint.sh /root/entrypoint.sh
WORKDIR /repositories

ENTRYPOINT /root/entrypoint.sh
