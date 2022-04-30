# Drakov Docker

Drakov API Blueprint Mock Server Docker Image

[![Docker Pulls](https://img.shields.io/docker/pulls/burakince/drakov.svg)](https://hub.docker.com/r/burakince/drakov/) [![drakov docker image build and push](https://github.com/burakince/drakov/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/burakince/drakov/actions/workflows/docker-publish.yml)

# Usage

```
docker run -it --rm -v $(pwd):/blueprints -p 3000:3000 burakince/drakov
```

or

```
docker run -it --rm -v $(pwd):/blueprints -p 3000:3000 burakince/drakov -f /blueprints/BLUEPRINT_FILE
```
