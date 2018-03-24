FROM node:alpine

RUN apk --no-cache update && apk --no-cache upgrade && \
    apk --no-cache add make bash python

USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
RUN npm install -g @angular/cli

VOLUME /work
WORKDIR /work
ENTRYPOINT [ "/bin/bash" ]
