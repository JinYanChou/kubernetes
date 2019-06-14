#!/bin/bash
MYSQL=`which mysql`
$MYSQL -h $2 -uroot -pcathaylife $1 < "./$1.sql"
