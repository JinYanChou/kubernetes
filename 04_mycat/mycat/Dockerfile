FROM hub.cathay/mycat-base:latest
USER root

WORKDIR /root
ADD ./shell/ /root
ADD ./mycat.sql /root/mycat.sql
ADD ./rule.xml /root/rule.xml
ADD ./schema.xml /root/schema.xml
ADD ./server.xml /root/server.xml
RUN cp -r /mycat/conf /root/conf && chmod 755 /root/entrypoint.sh

EXPOSE 8066
VOLUME ["/mycat/conf","/mycat/log"]
ENTRYPOINT ["sh","/root/entrypoint.sh", "&"]

# docker build -t hub.cathay/mycat:latest -t hub.cathay/mycat:0.0.7 .
# docker push hub.cathay/mycat:latest; docker push hub.cathay/mycat:0.0.7