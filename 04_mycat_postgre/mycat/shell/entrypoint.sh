#!/bin/sh
cp -r /root/conf /mycat
cp /root/rule.xml /mycat/conf/rule.xml
cp /root/schema.xml /mycat/conf/schema.xml
cp /root/server.xml /mycat/conf/server.xml

for mysqlServer in `host postgres.test-namespace.svc.cluster.local | awk '{print $4}'`
do
    ./mysql-table-create.sh mycat $mysqlServer
done

/mycat/bin/mycat console