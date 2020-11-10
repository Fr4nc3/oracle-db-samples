--------------------------------------------------------
--  Constraints for Table BOOK_AUTHORS
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
ALTER TABLE "BOOK_AUTHORS" MODIFY ("AUTHOR_ID" NOT NULL ENABLE);
ALTER TABLE "BOOK_AUTHORS" MODIFY ("BOOK_ID" NOT NULL ENABLE);


--------------------------------------------------------
--  Ref Constraints for Table BOOK_AUTHORS
--------------------------------------------------------

ALTER TABLE "BOOK_AUTHORS" ADD CONSTRAINT "BOOK_AUTHORS_AUTHORS_FK1" FOREIGN KEY ("BOOK_ID")
  REFERENCES "AUTHORS" ("AUTHORS_ID") ENABLE;
ALTER TABLE "BOOK_AUTHORS" ADD CONSTRAINT "BOOK_AUTHORS_BOOKS_FK1" FOREIGN KEY ("BOOK_ID")
  REFERENCES "BOOKS" ("BOOK_ID") ENABLE;
