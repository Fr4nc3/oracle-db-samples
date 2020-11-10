SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set linesize 200
set trimspool on
spool  create_database.out append
shutdown immediate
startup nomount;  -- start withoutdatabase
CREATE DATABASE NEW_DATABASE
   USER SYS IDENTIFIED BY oracle2020
   USER SYSTEM IDENTIFIED BY oracle2020
   LOGFILE GROUP 1 ('/u02/oradata/NEW_DATABASE/redo01.log') SIZE 20M,
           GROUP 2 ('/u02/oradata/NEW_DATABASE/redo02.log') SIZE 20M,
           GROUP 3 ('/u02/oradata/NEW_DATABASE/redo03.log') SIZE 20M
   MAXLOGFILES 5
   MAXLOGMEMBERS 5
   MAXLOGHISTORY 1
   MAXDATAFILES 100
   CHARACTER SET US7ASCII
   NATIONAL CHARACTER SET AL16UTF16
   EXTENT MANAGEMENT LOCAL
   DATAFILE '/u02/oradata/NEW_DATABASE/system01.dbf' SIZE 700M autoextend on 
   SYSAUX DATAFILE '/u02/oradata/NEW_DATABASE/sysaux01.dbf' SIZE 700M autoextend on
   DEFAULT TABLESPACE users
      DATAFILE '/u02/oradata/NEW_DATABASE/users01.dbf'
      SIZE 100M 
   DEFAULT TEMPORARY TABLESPACE tempts1
      TEMPFILE '/u02/oradata/NEW_DATABASE/temp01.dbf'
      SIZE 100M 
   UNDO TABLESPACE undotbs
      DATAFILE '/u02/oradata/NEW_DATABASE/undotbs01.dbf'
      SIZE 300M
  ;
spool off
exit