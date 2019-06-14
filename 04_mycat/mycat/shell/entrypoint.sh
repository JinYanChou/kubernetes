#!/bin/sh
SERVER_CONF=/mycat/conf/server.xml
if [ ! -f "$SERVER_CONF" ]; then
    cp -r /root/conf /mycat
fi

for mysqlServer in `host mysql.test-namespace.svc.cluster.local | awk '{print $4}'`
do
    ./mysql-db-create.sh DBAG dbag dbag $mysqlServer
    ./mysql-table-create.sh DBAG $mysqlServer
done

/mycat/bin/mycat console