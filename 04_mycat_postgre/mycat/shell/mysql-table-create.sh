#!/bin/bash
PSQL=`which psql`
PGPASSWORD=cathaylife $PSQL -U mycat -h $2 -d mycat -f ./$1.sql
