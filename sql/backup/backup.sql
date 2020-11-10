set linesize 200
set trimspool on
set echo on
spool  backup.out append
--------------------------------------------------------
--  SHOW RUNNIN PROCESSES
--------------------------------------------------------
SHUTDOWN IMMEDIATE;
STARTUP MOUNT;
BACKUP DATABASE;
ALTER DATABASE OPEN;

spool off