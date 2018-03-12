FROM kurron/docker-azul-jdk-8-build:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ENV IDEA_JDK /usr/lib/jvm/zulu-8-amd64

ENTRYPOINT ["/opt/idea-IU-173.4548.28/bin/idea.sh"]

USER root

ADD https://download.jetbrains.com/idea/ideaIU-2017.3.4.tar.gz /opt/idea.tar.gz

RUN tar --extract --verbose --directory /opt --file /opt/idea.tar.gz && rm -rf /opt/idea-IU-173.4548.28/jre64 && rm -f /opt/idea.tar.gz

USER powerless
