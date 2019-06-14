#!/bin/bash
MYSQL=`which mysql`
$MYSQL -h $2 -uroot -p $1 < './$1.sql'
