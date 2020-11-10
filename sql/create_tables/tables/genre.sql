--------------------------------------------------------
--  DDL for Table GENRES
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
CREATE TABLE "GENRES" 
(	"GENRE_ID" VARCHAR2(40 BYTE), 
"GENRE" VARCHAR2(255 BYTE), 
"PARENT_ID" VARCHAR2(40 BYTE)
) 
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
TABLESPACE "USERS" ;
