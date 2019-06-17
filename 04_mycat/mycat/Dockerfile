FROM java:openjdk-8
USER root

WORKDIR /root
ADD ./shell/ /root
RUN apt-get update; apt-get install dnsutils mysql-client vim -y \
    && tar xzvf Mycat-server-1.6.6.1-release-20181031195535-linux.tar.gz -C / \
    && rm Mycat-server-1.6.6.1-release-20181031195535-linux.tar.gz \
    && cp -r /mycat/conf /root/conf \
    && chmod 755 /root/entrypoint.sh

EXPOSE 8066
VOLUME ["/mycat/conf","/mycat/log"]
ENTRYPOINT ["sh","/root/entrypoint.sh", "&"]