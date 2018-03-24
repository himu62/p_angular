FROM node:alpine

RUN apk --no-cache update && apk --no-cache upgrade && \
    apk --no-cache add make bash

COPY . /work

WORKDIR /work
ENTRYPOINT [ "/bin/bash" ]
