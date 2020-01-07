#!/bin/bash
MYSQL=`which mysql`
Q1="CREATE DATABASE IF NOT EXISTS $1;"
Q2="GRANT ALL ON $1.* TO '$2'@'%' IDENTIFIED BY '$3';"
Q3="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}"
$MYSQL --default-character-set=utf8 -uroot -h $4 -pcathaylife -e "$SQL"
