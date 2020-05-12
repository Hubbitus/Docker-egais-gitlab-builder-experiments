# Docker-egais-gitlab-builder

Docker image for build http://lesegais.ru related projects on `gitlab-ci`.
It is intended to build `Java` `gradle` projects as backend and `Sencha` + `React` frontend projects too.

**This is automated build**
[![Docker Build Status](https://img.shields.io/docker/build/hubbitus/docker-egais-gitlab-builder-experiments.svg?style=plastic)](https://hub.docker.com/r/hubbitus/docker-egais-gitlab-builder-experiments)

Images docker hub: https://hub.docker.com/r/hubbitus/art


# Main content
Based on latest Fedora image and include next main packages:
 * `java-1.8.0-openjdk-devel` and `java-1.8.0-openjdk-headless` - as main language is java and `groovy` wrapper used
 * `ruby` - for use `SenchaCMD`
 * `git` - `gradle-node-plugin` require it to `npm` build
 * `postgres` - client utils to console query databases and ping it
 * `docker`, `docker-compose`, `helm`, `kubernetes-client` - to up stack for testing like Gitlab [Review Apps](https://docs.gitlab.com/ee/ci/review_apps/)
 * `jq` - for Gitlab API processing

# Addition
 * Also include [docker-credential-ecr-login](https://github.com/awslabs/amazon-ecr-credential-helper) for work with [ECR](https://aws.amazon.com/ecr/).
 * [epel-repo](https://fedoraproject.org/wiki/EPEL) enabled
 * Several packages for comfort work included also like:
    - `httpie`
    - `iproute`
    - `postgres` - console client
