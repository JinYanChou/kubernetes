# docker build -t hub.cathay/mycat:0.0.1-release .
# docker push hub.cathay/mycat:0.0.1-release
FROM openjdk:8-jdk-stretch
ADD ./Mycat-server-1.6.7.3-release-20190926142938-linux.tar.gz /
ADD ./postgresql-42.2.8.jar /mycat/lib/

EXPOSE 8066
VOLUME ["/mycat/log"]
ENTRYPOINT ["/mycat/bin/mycat", "console"]