FROM node:16-alpine3.11 AS base_image

RUN apk update && apk add yarn curl bash make && rm -rf /var/cache/apk/*

RUN curl -sfL https://install.goreleaser.com/github.com/tj/node-prune.sh | bash -s -- -b /usr/local/bin