FROM node:9.11.2-alpine

LABEL maintainer="Burak Ince <burak.ince@linux.org.tr>"

RUN apk update \
  && apk add --no-cache git make gcc g++ python \
  && npm config set loglevel error \
  && npm install drakov@1.0.4 \
  && apk del git make gcc g++ python \
  && rm -rf /var/cache/apk/*

ENV PATH ${PATH}:/node_modules/.bin

CMD ["-f","/blueprints/*.md"]
ENTRYPOINT ["drakov","-p","3000","--public"]
