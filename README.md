## Docker image for CRON daemon based on Alpine

This image is generic, thus you can obviously re-use it within your non-related EEA projects.

### Supported tags and respective Dockerfile links

  - `:latest` 

### Base docker image

 - [hub.docker.com](https://registry.hub.docker.com/u/eeacms/rancher.api.cron)


### Source code

  - [github.com](http://github.com/eea/rancher.api.cron


### Installation

1. Install [Docker](https://www.docker.com/).

## Usage

### Run with Docker Compose

Here is a basic example of a `docker-compose.yml` file using the `eeacms/rancher.api.cron` docker image:

    cron:
      image: eeacms/rancher.api.cron
      environment:
        CRONTAB: |-
          * * * * * rancher --url RANCHER_URL --access-key RANCHER_ACCESS --secret-key RANCHER_SECRET --env RANCHER_ENVID operation STACK/SERVICE

## Copyright and license

The Initial Owner of the Original Code is European Environment Agency (EEA).
All Rights Reserved.

The Original Code is free software;
you can redistribute it and/or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later
version.


## Funding

[European Environment Agency (EU)](http://eea.europa.eu)

