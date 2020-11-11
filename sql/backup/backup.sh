#!/bin/sh
ORACLE_SID=$1; export ORACLE_SID
PATH=$ORACLE_HOME/bin:$ORACLE_HOME/perl/bin:$PATH; export PATH
/opt/oracle/product/19c/dbhome_1/bin/sqlplus  @backup.sql