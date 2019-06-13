#!/bin/sh
SERVER_CONF=/mycat/conf/server.xml
if [ ! -f "$SERVER_CONF" ]; then
    cp -r /root/conf /mycat
fi
/mycat/bin/mycat console