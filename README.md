<a target='_blank' rel='nofollow' href='https://app.codesponsor.io/link/siWgAciQehZbF4oNcgaM2HS9/kurron/docker-intellij'>
  <img alt='Sponsor' width='888' height='68' src='https://app.codesponsor.io/embed/siWgAciQehZbF4oNcgaM2HS9/kurron/docker-intellij.svg' />
</a>

# Overview
This project is a simple Docker image that runs [JetBrains IntelliJ IDE](http://www.jetbrains.com/).

# Prerequisites
* a working [Docker](http://docker.io) engine
* a working [Docker Compose](http://docker.io) installation

# Building
Type `docker-compose build` to build the image.

# Installation
Docker will automatically install the newly built image into the cache.

# Tips and Tricks

## Launching The Image

`docker-compose up` will launch the image allowing you to begin working on projects. The Docker Compose file is
configured to mount your home directory into the container.  

# Troubleshooting

## X-Windows
If the image complains that it cannot connect to your X server, simply run `xhost +` to allow the container to connect
to your X server.

# License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

# List of Changes

* automatically detect and mount the user's home directory
