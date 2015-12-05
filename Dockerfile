FROM kurron/docker-jetbrains-base:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.ide.name="Intellij IDEA" org.kurron.ide.version=15.0.1 

ADD http://download.jetbrains.com/idea/ideaIU-15.0.1.tar.gz /tmp/idea.tar.gz

RUN mkdir -p /opt/intellij && \
    tar zxvf /tmp/idea.tar.gz --strip-components=1 -C /opt/intellij && \
    rm /tmp/idea.tar.gz

ENV IDEA_JDK=/usr/lib/jvm/oracle-jdk-8

USER developer:developer
WORKDIR /home/developer
ENTRYPOINT ["/opt/intellij/bin/idea.sh"]
