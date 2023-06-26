FROM node:16.20.1 as foundation

LABEL maintainer="Burak Ince <burak.ince@linux.org.tr>"

COPY package.json package-lock.json /usr/app/

WORKDIR /usr/app

RUN npm config set loglevel error
RUN npm install

FROM node:16.20.1-slim

WORKDIR /usr/app

COPY --from=foundation /usr/app/node_modules /node_modules

ENV PATH ${PATH}:/node_modules/.bin

CMD [ "-f", "/blueprints/*.md" ]
ENTRYPOINT [ "drakov", "-p", "3000", "--public" ]