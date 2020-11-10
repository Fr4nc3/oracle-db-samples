set verify off
ACCEPT sysPassword CHAR PROMPT 'Enter new password for SYS: ' HIDE
ACCEPT systemPassword CHAR PROMPT 'Enter new password for SYSTEM: ' HIDE
ACCEPT pdbAdminPassword CHAR PROMPT 'Enter new password for PDBADMIN: ' HIDE
host /opt/oracle/product/19c/dbhome_1/bin/orapwd file=/opt/oracle/product/19c/dbhome_1/dbs/orapworbooks force=y format=12
@/tmp/orbooks/scripts/CloneRmanRestore.sql
@/tmp/orbooks/scripts/cloneDBCreation.sql
@/tmp/orbooks/scripts/postScripts.sql
@/tmp/orbooks/scripts/lockAccount.sql
@/tmp/orbooks/scripts/postDBCreation.sql
