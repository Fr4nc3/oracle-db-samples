SET VERIFY OFF
spool /tmp/orbooks/scripts/postDBCreation.log append
host /opt/oracle/product/19c/dbhome_1/OPatch/datapatch -skip_upgrade_check -db orbooks;
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
create spfile='/opt/oracle/product/19c/dbhome_1/dbs/spfileorbooks.ora' FROM pfile='/tmp/orbooks/scripts/init.ora';
connect "SYS"/"&&sysPassword" as SYSDBA
select 'utlrp_begin: ' || to_char(sysdate, 'HH:MI:SS') from dual;
@/opt/oracle/product/19c/dbhome_1/rdbms/admin/utlrp.sql;
select 'utlrp_end: ' || to_char(sysdate, 'HH:MI:SS') from dual;
select comp_id, status from dba_registry;
execute dbms_swrf_internal.cleanup_database(cleanup_local => FALSE);
commit;
shutdown immediate;
connect "SYS"/"&&sysPassword" as SYSDBA
startup ;
spool off
exit;
