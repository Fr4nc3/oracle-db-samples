--------------------------------------------------------
--  DDL for Index AUTHORS_PK
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
CREATE UNIQUE INDEX "AUTHORS_PK" ON "AUTHORS" ("AUTHORS_ID") 
PCTFREE 10 INITRANS 2 MAXTRANS 255 
TABLESPACE "USERS" ;
