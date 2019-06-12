FROM java:openjdk-8
USER root

WORKDIR /root
ADD entrypoint.sh /root
RUN wget http://dl.mycat.io/1.6.6.1/Mycat-server-1.6.6.1-release-20181031195535-linux.tar.gz \
    && tar xzvf Mycat-server-1.6.6.1-release-20181031195535-linux.tar.gz -C / \ 
    && rm Mycat-server-1.6.6.1-release-20181031195535-linux.tar.gz \
    && cp -r /mycat/conf /root/conf \
    && chmod 755 /root/entrypoint.sh

EXPOSE 3307
VOLUME ["/mycat/conf","/mycat/log"]
ENTRYPOINT ["sh","/root/entrypoint.sh", "&"]