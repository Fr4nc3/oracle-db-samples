SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /tmp/orbooks/scripts/postScripts.log append
UPDATE sys.USER$ set SPARE6=NULL;
execute dbms_datapump_utl.create_default_dir;
commit;
connect "SYS"/"&&sysPassword" as SYSDBA
alter session set current_schema=ORDSYS;
@/opt/oracle/product/19c/dbhome_1/ord/im/admin/ordlib.sql;
alter session set current_schema=SYS;
connect "SYS"/"&&sysPassword" as SYSDBA
create or replace directory XMLDIR as '/opt/oracle/product/19c/dbhome_1/rdbms/xml';
create or replace directory XSDDIR as '/opt/oracle/product/19c/dbhome_1/rdbms/xml/schema';
@/opt/oracle/product/19c/dbhome_1/rdbms/admin/utlfixdirs.sql;
connect "SYS"/"&&sysPassword" as SYSDBA
connect "SYS"/"&&sysPassword" as SYSDBA
@/opt/oracle/product/19c/dbhome_1/rdbms/admin/execocm.sql;
execute dbms_qopatch.replace_logscrpt_dirs;
@/opt/oracle/product/19c/dbhome_1/rdbms/admin/execemx.sql;
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /tmp/orbooks/scripts/postDBCreation.log append
