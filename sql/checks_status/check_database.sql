SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set linesize 200
set trimspool on
set echo on
spool  check_database.out append
-----------------------------------------------------------
--  MAIN CHECK ALL THE important queries from  SELECTED DB
-----------------------------------------------------------
@check_parameters.sql
@check_tablespace.sql
@check_freespace.sql
@check_segments.sql
@check_running_process.sql

spool off
