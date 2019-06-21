#!/bin/sh
cp -r /root/conf /mycat
cp /root/rule.xml /mycat/conf/rule.xml
cp /root/schema.xml /mycat/conf/schema.xml
cp /root/server.xml /mycat/conf/server.xml

for mysqlServer in `host mysql.test-namespace.svc.cluster.local | awk '{print $4}'`
do
    ./mysql-db-create.sh dbag ebaf ebaf $mysqlServer
    ./mysql-db-create.sh dbab ebaf ebaf $mysqlServer
    ./mysql-table-create.sh dbag $mysqlServer
    ./mysql-table-create.sh dbab $mysqlServer
done

/mycat/bin/mycat console