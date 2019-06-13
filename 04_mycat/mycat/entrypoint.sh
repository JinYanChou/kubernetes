#!/bin/sh
SERVER_CONF=/mycat/conf/server.xml
if [ -f "$SERVER_CONF" ]; then
else
    cp -r /root/conf /mycat
fi
/mycat/bin/mycat console