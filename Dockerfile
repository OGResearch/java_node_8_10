FROM azul/zulu-openjdk-alpine:8
LABEL maintainer "Frantisek Simorda <frantisek.simorda@ogresearch.com>"

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

RUN apk -U upgrade \
  && apk add --repository https://dl-cdn.alpinelinux.org/alpine/v3.12/main/ --no-cache \
    "nodejs<10" \
    "nodejs-npm<10" \
    yarn \
    git \
    python2 \
    curl
