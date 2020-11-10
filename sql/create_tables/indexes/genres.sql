--------------------------------------------------------
--  DDL for Index GENRES_PK
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
CREATE UNIQUE INDEX "GENRES_PK" ON "GENRES" ("GENRE_ID") 
PCTFREE 10 INITRANS 2 MAXTRANS 255 
TABLESPACE "USERS" ;
