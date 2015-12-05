FROM kurron/docker-oracle-jdk-8:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

RUN apt-get update && apt-get install -y libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev git

ADD http://download.jetbrains.com/idea/ideaIU-15.0.1.tar.gz /tmp/idea.tar.gz

RUN mkdir -p /opt/intellij 
RUN tar zxvf /tmp/idea.tar.gz --strip-components=1 -C /opt/intellij
RUN rm /tmp/idea.tar.gz

ENV IDEA_JDK=/usr/lib/jvm/oracle-jdk-8

ENTRYPOINT ["/opt/intellij/bin/idea.sh"]
