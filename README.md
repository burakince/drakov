# Drakov Docker

Drakov API Blueprint Mock Server Docker Image

[![Docker Pulls](https://img.shields.io/docker/pulls/burakince/drakov.svg)](https://hub.docker.com/r/burakince/drakov/)

# Usage

```
docker run -it --rm -v $(pwd):/blueprints -p 3000:3000 burakince/drakov
```

or

```
docker run -it --rm -v $(pwd):/blueprints -p 3000:3000 burakince/drakov -f /blueprints/BLUEPRINT_FILE
```
