--------------------------------------------------------
--  Constraints for Table GENRES
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
ALTER TABLE "GENRES" ADD CONSTRAINT "GENRES_PK" PRIMARY KEY ("GENRE_ID")
USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
TABLESPACE "USERS"  ENABLE;
ALTER TABLE "GENRES" MODIFY ("GENRE" NOT NULL ENABLE);
ALTER TABLE "GENRES" MODIFY ("GENRE_ID" NOT NULL ENABLE);
