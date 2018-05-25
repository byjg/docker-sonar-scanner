FROM openjdk:8-jdk-alpine

ARG SONAR_SCANNER_VERSION

RUN apk add --no-cache --virtual .requirements curl wget

COPY assets/*.sh /opt/

RUN source /opt/setversion.sh $SONAR_SCANNER_VERSION && /opt/installsonarqube.sh

RUN apk del --no-cache .requirements

WORKDIR /opt/src

ENTRYPOINT [ "/usr/bin/sonar-scanner" ]

