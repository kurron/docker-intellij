FROM kurron/docker-jetbrains-base:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.ide.name="Intellij IDEA" org.kurron.ide.version=15.0.4

ADD https://download.jetbrains.com/idea/ideaIU-15.0.4.tar.gz /tmp/ide.tar.gz

RUN mkdir -p /opt/ide && \
    tar zxvf /tmp/ide.tar.gz --strip-components=1 -C /opt/ide && \
    rm /tmp/ide.tar.gz

ENV IDEA_JDK=/usr/lib/jvm/oracle-jdk-8

ENTRYPOINT ["/opt/ide/bin/idea.sh"]
