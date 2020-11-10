--------------------------------------------------------
--  DDL for Index BOOKS_PK
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
CREATE UNIQUE INDEX "BOOKS_PK" ON "BOOKS" ("BOOK_ID") 
PCTFREE 10 INITRANS 2 MAXTRANS 255 
TABLESPACE "USERS" ;
