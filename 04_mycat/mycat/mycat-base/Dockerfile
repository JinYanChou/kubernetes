FROM java:openjdk-8
USER root

ADD ./Mycat-server-1.6.6.1-release-20181031195535-linux.tar.gz /
RUN apt-get update; apt-get install dnsutils mysql-client vim -y

# docker build -t hub.cathay/mycat-base:latest -t hub.cathay/mycat-base:0.0.1 .
# docker push hub.cathay/mycat-base:latest; docker push hub.cathay/mycat-base:0.0.1