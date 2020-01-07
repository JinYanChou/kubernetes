# docker build -t hub.cathay/mycat-base:0.0.4-debug .
# docker push hub.cathay/mycat-base:0.0.4-debug
FROM java:openjdk-8
USER root

ADD ./Mycat-server-1.6.7.3-release-20190926142938-linux.tar.gz /
ADD ./postgresql-42.2.8.jar /mycat/lib/
RUN apt-get update; apt-get install dnsutils mysql-client postgresql-client vim -y