#!/bin/sh
for mysqlServer in `host postgres.test-namespace.svc.cluster.local | awk '{print $4}'`
do
    ./table-create.sh mycat.sql $mysqlServer
done