#!/bin/bash

# Launches IntelliJ IDEA inside a Docker container

IMAGE=${1:-kurron/intellij-local:latest}

# Need to give the container access to your windowing system
xhost +

CMD="docker run --rm \
                --interactive \
                --tty \
                --name intellij \
                --net "host" \
                --env DISPLAY=unix$DISPLAY \
                --user=$(id -u $(whoami)):$(id -g $(whoami)) \
                --volume /tmp/.X11-unix:/tmp/.X11-unix \
                --volume $HOME:/home/developer \
                --volume /var/run/docker.sock:/var/run/docker.sock \
                ${IMAGE}"

echo $CMD
$CMD
