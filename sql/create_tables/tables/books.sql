--------------------------------------------------------
--  DDL for Table BOOKS
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
CREATE TABLE "BOOKS" 
(	"BOOK_ID" VARCHAR2(40 BYTE), 
"TITLE" VARCHAR2(255 BYTE), 
"TOTAL_PAGES" NUMBER(*,0) DEFAULT 0, 
"RATING" FLOAT(2) DEFAULT 0.0, 
"ISBN" VARCHAR2(20 BYTE), 
"PUBLISHED_DATE" DATE, 
"PUBLISHER_ID" VARCHAR2(40 BYTE)
)  
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
TABLESPACE "USERS" ;
