SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /tmp/orbooks/scripts/cloneDBCreation.log append
shutdown abort;
startup nomount pfile="/tmp/orbooks/scripts/init.ora";
Create controlfile reuse set database "orbooks"
MAXINSTANCES 8
MAXLOGHISTORY 1
MAXLOGFILES 16
MAXLOGMEMBERS 3
MAXDATAFILES 100
Datafile 
'&&file0',
'&&file1',
'&&file2',
'&&file3'
LOGFILE GROUP 1 ('/u02/oradata/ORBOOKS/redo01.log') SIZE 200M,
GROUP 2 ('/u02/oradata/ORBOOKS/redo02.log') SIZE 200M,
GROUP 3 ('/u02/oradata/ORBOOKS/redo03.log') SIZE 200M RESETLOGS;
exec dbms_backup_restore.zerodbid(0);
shutdown immediate;
startup nomount pfile="/tmp/orbooks/scripts/initorbooksTemp.ora";
Create controlfile reuse set database "orbooks"
MAXINSTANCES 8
MAXLOGHISTORY 1
MAXLOGFILES 16
MAXLOGMEMBERS 3
MAXDATAFILES 100
Datafile 
'&&file0',
'&&file1',
'&&file2',
'&&file3'
LOGFILE GROUP 1 ('/u02/oradata/ORBOOKS/redo01.log') SIZE 200M,
GROUP 2 ('/u02/oradata/ORBOOKS/redo02.log') SIZE 200M,
GROUP 3 ('/u02/oradata/ORBOOKS/redo03.log') SIZE 200M RESETLOGS;
alter system enable restricted session;
alter database "orbooks" open resetlogs;
DECLARE 
cursor cur_services is 
select name from dba_services where name like 'seeddata%'; 
BEGIN 
 for i in cur_services loop 
 dbms_service.delete_service(i.name); 
 end loop; 
END; 
/
alter database rename global_name to "orbooks";
ALTER TABLESPACE TEMP ADD TEMPFILE '/u02/oradata/ORBOOKS/temp01.dbf' SIZE 20480K REUSE AUTOEXTEND ON NEXT 640K MAXSIZE UNLIMITED;
select tablespace_name from dba_tablespaces where tablespace_name='USERS';
ALTER PROFILE default LIMIT PASSWORD_VERIFY_FUNCTION null;
alter user sys account unlock identified by "&&sysPassword";
connect "SYS"/"&&sysPassword" as SYSDBA
alter user system account unlock identified by "&&systemPassword";
host /opt/oracle/product/19c/dbhome_1/OPatch/datapatch -skip_upgrade_check -db orbooks;
select sid, program, serial#, username from v$session;
alter database character set INTERNAL_CONVERT AL32UTF8;
alter database national character set INTERNAL_CONVERT AL16UTF16;
alter system disable restricted session;
