# Drakov Docker

Drakov API Blueprint Mock Server Docker Image

[![drakov docker image build and push](https://github.com/burakince/drakov/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/burakince/drakov/actions/workflows/docker-publish.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/burakince/drakov)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/burakince/drakov?sort=date)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/burakince/drakov?sort=semver)
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/drakov)](https://artifacthub.io/packages/search?repo=drakov)

# Usage

```
docker run -it --rm -v $(pwd):/blueprints -p 3000:3000 burakince/drakov
```

or

```
docker run -it --rm -v $(pwd):/blueprints -p 3000:3000 burakince/drakov -f /blueprints/BLUEPRINT_FILE
```
