#!/bin/sh
# SERVER_CONF=/mycat/conf/server.xml
# if [ ! -f "$SERVER_CONF" ]; then
    cp -r /root/conf /mycat
    cp /root/rule.xml /mycat/conf/rule.xml
    cp /root/schema.xml /mycat/conf/schema.xml
    cp /root/server.xml /mycat/conf/server.xml
# fi

for mysqlServer in `host mysql.test-namespace.svc.cluster.local | awk '{print $4}'`
do
    ./mysql-db-create.sh DBAG dbag dbag $mysqlServer
    ./mysql-table-create.sh DBAG $mysqlServer
done

/mycat/bin/mycat console