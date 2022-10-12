#  Base Service

- [Overview](#overview)
- [Project setup](#project-setup)
- [Running the app](#running-the-app)

## Overview

This is a base ruby hanami development environment.

### Keeping the project up to date

* This project uses a changelog, include your change description in the `changelog.md` with your commits
* If you find something in this `readme.md` to be out of date, please kindly update it 😊

### This project uses

* Ruby: [Ruby documentation](https://www.ruby-lang.org/en/documentation/)
* Hanami::Controller: [Hanami::Controller](https://github.com/hanami/controller)
* Hanami::Router: [Hanami::Router](https://github.com/hanami/router)
* Hanami::Utils: [Hanami::Utils](https://github.com/hanami/utils)
* Swagger blocks: [Swagger blocks](https://github.com/fotinakis/swagger-blocks)
* Alba: [Alba documentation](https://okuramasafumi.github.io/alba/)
* Mongoid: [Mongoid documentation](https://www.mongodb.com/docs/mongoid/current/)
* Puma web server: [Puma](https://puma.io/)

## Project setup

### Requirements

* Docker Desktop (Docker, Docker Compose)

### Docker setup

* The provided `Dockerfile` installs only the requirements needed for the app to run
* The `compose.yml` file mounts the root project as a volume so its contents and any changes are accessible immediately in the container for in-container development

#### Build container

```
<from project root>
docker compose build
```

#### Run container

```
<from project root>
docker compose up
```

#### How to stop container

* Kill the command/terminal
* Or stop the container

```
<from project root>
docker compose down
```

#### Run tests

```
<from project root>
COVERAGE=true bundle exec rake
```

## Running the app

### With the container running, the app should now be reachable

* [http://localhost:2300](http://localhost:2300)
* [Health check](http://localhost:2300/health)
* [Swagger UI](http://localhost:8080)

### Building swagger docs

We need to have SwaggerBlocks for each action in addition to the action class. Same is required for models. Also we need to add all SwaggerBlocks in SWAGGERED_CLASSES in apidocs index action. For more info check [Swagger blocks](https://github.com/fotinakis/swagger-blocks)
