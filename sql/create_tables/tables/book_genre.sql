--------------------------------------------------------
--  DDL for Table BOOK_GENRE
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
CREATE TABLE "BOOK_GENRE" 
(	"BOOK_ID" VARCHAR2(40 BYTE), 
"GENRE_ID" VARCHAR2(40 BYTE)
) 
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
TABLESPACE "USERS" ;
