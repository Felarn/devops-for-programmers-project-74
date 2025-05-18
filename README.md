### Hexlet tests and linter status:

[![Actions Status](https://github.com/Felarn/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Felarn/devops-for-programmers-project-74/actions)

[![push](https://github.com/Felarn/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/Felarn/devops-for-programmers-project-74/actions/workflows/push.yml)

## Requirements

- make
- Docker version 28.1.1 or higher
- Docker Compose version v2.35.1 or higher

# About

This is the first learning project from the DevOps course on Hexlet. It creates docker image based on [js-fastify-blog](https://github.com/hexlet-components/js-fastify-blog) app. It uses Docker Compose to start the app in developer mode and run production tests. Finally it imitates CI using github actions on push.

### Docker image

If the tests are successful after a push to GitHub, the Docker image <code>felarn/devops-for-programmers-project-74</code> is created and pushed to Docker Hub:
https://hub.docker.com/repository/docker/felarn/devops-for-programmers-project-74

To test image itself you can run:

```
docker start test-run || docker run --name test-run -d -e NODE_ENV=development -p 8080:8080  felarn/devops-for-programmers-project-74 make dev
```

Site should be available at http://localhost:8080/

To stop container:

```
docker stop test-run
```

Alternatively, after setup you can use <code>make run-from-image</code>, <code>make logs</code>, <code>make halt-test-run</code> commands [described below](#Additional-commands).

# Setup

Follow steps below to setup and launch project:

### Clone repository

```
git clone git@github.com:Felarn/devops-for-programmers-project-74.git
```

### Install dependencies

```
make install
```

### Run

run development server

```
make dev-start
```

or run production tests

```
make ci
```

# Additional commands

### Stop all docker containers

```
make stop-all
```

### DELETE ALL Docker images

```
make clear-all-images
```

### Run app from docker-hub image (container name is "test-run")

```
make run-from-image
```

### Show Docker Compose logs

```
make logs
```

### Stop container named "test-run"

```
make halt-test-run
```

### Build production Docker image

```
make build-image
```

### Push built image to Docker hub

```
make push-image-to-docker-hub
```
