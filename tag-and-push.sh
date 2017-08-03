#!/bin/bash

# use the time as a tag
UNIXTIME=$(date +%s)

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag kurron/intellij-local:latest kurron/docker-intellij:latest
docker tag kurron/intellij-local:latest kurron/docker-intellij:${UNIXTIME}
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push kurron/docker-intellij:latest
docker push kurron/docker-intellij:${UNIXTIME}

