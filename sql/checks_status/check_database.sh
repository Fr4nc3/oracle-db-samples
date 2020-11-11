#!/bin/sh
read -p "select database: " database
ORACLE_SID=$database; export ORACLE_SID
PATH=$ORACLE_HOME/bin:$ORACLE_HOME/perl/bin:$PATH; export PATH
/opt/oracle/product/19c/dbhome_1/bin/sqlplus /nolog @check_database.sql