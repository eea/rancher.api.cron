FROM alpine:3.9
MAINTAINER "Anton Cupcea" <anton.cupcea@eaudeweb.ro>

ENV RANCHER_CLI_VERSION=v0.6.14 \


RUN apk add --update bash curl && \
    rm -rf /var/cache/apk/* && \
    curl -L -o rancher-linux-amd64-${RANCHER_CLI_VERSION}.tar.gz https://releases.rancher.com/cli/${RANCHER_CLI_VERSION}/rancher-linux-amd64-${RANCHER_CLI_VERSION}.tar.gz  && \
    tar -xzvf rancher-linux-amd64-${RANCHER_CLI_VERSION}.tar.gz  && \
    mv rancher-${RANCHER_CLI_VERSION}/rancher /usr/bin/rancher && \
    rm -rf rancher-*

COPY src/docker-entrypoint.sh /

ENTRYPOINT  ["/docker-entrypoint.sh"]
