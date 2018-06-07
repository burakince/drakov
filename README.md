# Drakov Docker
Drakov API Blueprint Mock Server Docker Image

[![Docker Pulls](https://img.shields.io/docker/pulls/burakince/drakov.svg)](https://hub.docker.com/r/burakince/drakov/) [![Docker Automated build](https://img.shields.io/docker/automated/burakince/drakov.svg)](https://hub.docker.com/r/burakince/drakov/) [![Docker Build Status](https://img.shields.io/docker/build/burakince/drakov.svg)](https://hub.docker.com/r/burakince/drakov/)

Latest Dredd: [![npm version](https://badge.fury.io/js/drakov.svg)](https://www.npmjs.com/package/drakov)
Latest Node: [![node tag](https://img.shields.io/github/tag/nodejs/node.svg)](https://github.com/nodejs/node)

This image using [Drakov](https://github.com/Aconex/drakov) 1.0.4 with Alpine Node 9.11.1

# Usage

```
docker run -it --rm -v $(pwd):/blueprints -p 3000:3000 burakince/drakov
```
