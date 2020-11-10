--------------------------------------------------------
--  DDL for Table PUBLISHERS
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
CREATE TABLE "PUBLISHERS" 
(	"PUBLISHER_ID" VARCHAR2(40 BYTE), 
"NAME" VARCHAR2(255 BYTE)
)
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
TABLESPACE "USERS" ;
