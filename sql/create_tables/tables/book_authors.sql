--------------------------------------------------------
--  DDL for Table BOOK_AUTHORS
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
CREATE TABLE "BOOK_AUTHORS" 
(	"BOOK_ID" VARCHAR2(40 BYTE), 
"AUTHOR_ID" VARCHAR2(40 BYTE)
) 
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
TABLESPACE "USERS" ;
