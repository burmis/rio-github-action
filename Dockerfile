FROM alpine:latest

RUN apk update \
    && apk add curl git \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
    && chmod u+x kubectl \
    && mv kubectl /bin/kubectl \
    && curl -sfL https://get.rio.io | sh -

ENTRYPOINT [ "/usr/local/bin/rio" ]