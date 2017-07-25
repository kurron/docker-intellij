FROM kurron/docker-azul-jdk-8-build:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ENV IDEA_JDK /usr/lib/jvm/zulu-8-amd64

ENTRYPOINT ["/opt/idea-IU-172.3317.76/bin/idea.sh"]

USER root

ADD https://download.jetbrains.com/idea/ideaIU-2017.2.tar.gz /opt/

RUN rm -rf /opt/idea-IU-172.3317.76/jre64

USER powerless
