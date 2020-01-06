FROM hub.cathay/mycat-base:0.0.3
USER root

WORKDIR /root
ADD ./entrypoint.sh .
RUN chmod 755 entrypoint.sh

EXPOSE 8066
VOLUME ["/mycat/log"]
ENTRYPOINT ["sh", "/root/entrypoint.sh", "&"]

# docker build -t hub.cathay/mycat:latest -t hub.cathay/mycat:0.1.9 .
# docker push hub.cathay/mycat:latest; docker push hub.cathay/mycat:0.1.9