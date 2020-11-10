--------------------------------------------------------
--  DDL for Index PUBLISHERS_PK
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
CREATE UNIQUE INDEX "PUBLISHERS_PK" ON "PUBLISHERS" ("PUBLISHER_ID") 
PCTFREE 10 INITRANS 2 MAXTRANS 255 
TABLESPACE "USERS" ;
