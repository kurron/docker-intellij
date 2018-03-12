# Overview
This project is a simple Docker image that runs [JetBrains IntelliJ IDE](http://www.jetbrains.com/).

# Prerequisites
* a working [Docker](http://docker.io) engine

# Building
Type `./buid.sh` to build the image.

# Installation
Docker will automatically install the newly built image into the cache.

# Tips and Tricks

## Launching The Image
`./test.sh` will launch the image allowing you to begin working on projects.  

## Desktop Launcher

# Troubleshooting

## X-Windows
If the image complains that it cannot connect to your X server, simply run `xhost +` to allow the container to connect
to your X server.

# License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

# List of Changes
* upgrade to IDEA 2017.3.4
* automatically detect and mount the user's home directory
