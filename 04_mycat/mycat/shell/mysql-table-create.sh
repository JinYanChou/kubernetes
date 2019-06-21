#!/bin/bash
MYSQL=`which mysql`
$MYSQL --default-character-set=utf8 -h $2 -uroot -pcathaylife $1 < "./$1.sql"
