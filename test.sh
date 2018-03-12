#!/bin/bash

# Launches IntelliJ IDEA inside a Docker container

IMAGE=${1:-kurron/intellij-local:latest}

DOCKER_GROUP_ID=$(cut -d: -f3 < <(getent group docker))
USER_ID=$(id -u $(whoami))
GROUP_ID=$(id -g $(whoami))
HOME_DIR=$(cut -d: -f6 < <(getent passwd ${USER_ID}))

# Need to give the container access to your windowing system
xhost +

CMD="docker run --group-add ${DOCKER_GROUP_ID} \
                --env HOME=${HOME} \
                --env DISPLAY=unix${DISPLAY} \
                --interactive \
                --name IntelliJ \
                --net "host" \
                --rm \
                --tty \
                --user=${USER_ID}:${GROUP_ID} \
                --volume ${HOME}:${HOME} \
                --volume /etc/group:/etc/group:ro \
                --volume /etc/passwd:/etc/passwd:ro \
                --volume /tmp/.X11-unix:/tmp/.X11-unix \
                --volume /var/run/docker.sock:/var/run/docker.sock \
                --workdir ${HOME} \
                ${IMAGE}"

echo $CMD
$CMD
