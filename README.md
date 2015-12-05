#Overview
This project is a simple Docker image that runs [JetBrains IntelliJ IDE](http://www.jetbrains.com/).

#Prerequisites
* a working [Docker](http://docker.io) engine
* a working [Docker Compose](http://docker.io) installation

#Building
Type `docker-compose build` to build the image.

#Installation
Docker will automatically install the newly built image into the cache.

#Tips and Tricks

##Launching The Image

`docker-compose up` will launch the image allowing you to begin working on projects. The Docker Compose file is 
configured to mount your home directory into the container.  

#Troubleshooting

##User Account
The image assumes that the account running the continer will have a user and group id of 1000:1000.  This allows the container 
to save files in your home directory and keep the proper permissions.

##X-Windows
If the image complains that it cannot connect to your X server, simply run `xhost +` to allow the container to connect 
to your X server.

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes

