ARG NODE_VERSION=22
FROM node:${NODE_VERSION} AS foundation

LABEL maintainer="Burak Ince <burak.ince@linux.org.tr>"

COPY package.json package-lock.json /usr/app/

WORKDIR /usr/app

RUN npm config set loglevel error
RUN npm install

FROM node:${NODE_VERSION}-slim

WORKDIR /usr/app

COPY --from=foundation /usr/app/node_modules /node_modules

ENV PATH=${PATH}:/node_modules/.bin

CMD [ "-f", "/blueprints/*.md" ]
ENTRYPOINT [ "drakov", "-p", "3000", "--public" ]