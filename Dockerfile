ARG NODE_VERSION=16.15.0

FROM node:${NODE_VERSION} as foundation

LABEL maintainer="Burak Ince <burak.ince@linux.org.tr>"

WORKDIR /usr/app

ARG DRAKOV_VERSION=2.0.1
ARG NPM_VERSION=8.10.0

RUN npm config set loglevel error
RUN npm install -g npm@$NPM_VERSION
RUN npm install drakov@$DRAKOV_VERSION

FROM node:${NODE_VERSION}-slim

WORKDIR /usr/app

COPY --from=foundation /usr/app/node_modules /node_modules

ENV PATH ${PATH}:/node_modules/.bin

CMD [ "-f", "/blueprints/*.md" ]
ENTRYPOINT [ "drakov", "-p", "3000", "--public" ]