#!/bin/sh

OLD_UMASK=`umask`
umask 0027
mkdir -p /opt/oracle
mkdir -p /opt/oracle/admin/orbooks/adump
mkdir -p /opt/oracle/admin/orbooks/dpdump
mkdir -p /opt/oracle/admin/orbooks/pfile
mkdir -p /opt/oracle/audit
mkdir -p /opt/oracle/cfgtoollogs/dbca/orbooks
mkdir -p /opt/oracle/fast_recovery_area
mkdir -p /opt/oracle/fast_recovery_area/ORBOOKS
mkdir -p /opt/oracle/product/19c/dbhome_1/dbs
mkdir -p /u02/oradata/ORBOOKS
umask ${OLD_UMASK}
PERL5LIB=$ORACLE_HOME/rdbms/admin:$PERL5LIB; export PERL5LIB
ORACLE_SID=orbooks; export ORACLE_SID
PATH=$ORACLE_HOME/bin:$ORACLE_HOME/perl/bin:$PATH; export PATH
echo You should Add this entry in the /etc/oratab: orbooks:/opt/oracle/product/19c/dbhome_1:Y
/opt/oracle/product/19c/dbhome_1/bin/sqlplus /nolog @/tmp/orbooks/scripts/orbooks.sql
