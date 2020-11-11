SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set linesize 200
set trimspool on
set echo on
spool  backup.out append
--------------------------------------------------------
--  RUN BACKUP
--------------------------------------------------------
SHUTDOWN IMMEDIATE;
STARTUP MOUNT;
BACKUP DATABASE;
ALTER DATABASE OPEN;

spool off