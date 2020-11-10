--------------------------------------------------------
--  Constraints for Table AUTHORS
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
ALTER TABLE "AUTHORS" ADD CONSTRAINT "AUTHORS_PK" PRIMARY KEY ("AUTHORS_ID")
USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
TABLESPACE "USERS"  ENABLE;
ALTER TABLE "AUTHORS" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
ALTER TABLE "AUTHORS" MODIFY ("AUTHORS_ID" NOT NULL ENABLE);
