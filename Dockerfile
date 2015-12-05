FROM kurron/docker-oracle-jdk-8:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ADD http://download.jetbrains.com/idea/ideaIU-15.0.1.tar.gz /idea.tar.gz

RUN apt-get update && apt-get install -y libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev

RUN tar zxvf /idea.tar.gz

ENV IDEA_JDK=/usr/lib/jvm/oracle-jdk-8

ENTRYPOINT ["/idea-IU-143.382.35/bin/idea.sh"]
