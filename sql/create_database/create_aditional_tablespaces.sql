SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA

set linesize 200
set trimspool on
spool  create_additonal_tbs.out append
--------------------------------------------------------
--  CREATE ADDITIONAL TABLESPACE 
--------------------------------------------------------
  CREATE TABLESPACE system001
      DATAFILE '/u02/oradata/NEW_DATABASE/system001.dbf'
      SIZE 700M;
  CREATE TABLESPACE sysaux
      DATAFILE '/u02/oradata/NEW_DATABASE/sysaux001.dbf'
      SIZE 700M;
   CREATE TABLESPACE tools
      DATAFILE '/u02/oradata/NEW_DATABASE/tools01.dbf'
      SIZE 100M;
 CREATE TABLESPACE data01
      DATAFILE '/u02/oradata/NEW_DATABASE/data01.dbf'
      SIZE 100M;
  CREATE TABLESPACE index01
      DATAFILE '/u02/oradata/NEW_DATABASE/index01.dbf'
      SIZE 100M;
spool off
  exit;