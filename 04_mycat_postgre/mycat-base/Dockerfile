FROM java:openjdk-8
USER root

ADD ./Mycat-server-1.6.6.1-release-20181031195535-linux.tar.gz /
ADD ./postgresql-42.2.8.jar /mycat/lib/
RUN apt-get update; apt-get install dnsutils mysql-client postgresql-client vim -y

# docker build -t hub.cathay/mycat-base:latest -t hub.cathay/mycat-base:0.0.3 .
# docker push hub.cathay/mycat-base:latest; docker push hub.cathay/mycat-base:0.0.3