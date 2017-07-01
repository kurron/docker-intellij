FROM kurron/docker-jetbrains-base:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ENV IDEA_JDK /usr/lib/jvm/zulu-8-amd64

ENTRYPOINT ["/opt/idea-IU-171.4694.23/bin/idea.sh"]

ADD https://download.jetbrains.com/idea/ideaIU-2017.1.4.tar.gz /opt
RUN rm -rf /opt/idea-IU-171.4694.23/jre64


USER developer

