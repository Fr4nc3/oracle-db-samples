--------------------------------------------------------
--  Constraints for Table BOOK_GENRE
--------------------------------------------------------
SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
ALTER TABLE "BOOK_GENRE" MODIFY ("GENRE_ID" NOT NULL ENABLE);
ALTER TABLE "BOOK_GENRE" MODIFY ("BOOK_ID" NOT NULL ENABLE);


--------------------------------------------------------
--  Ref Constraints for Table BOOK_GENRE
--------------------------------------------------------

ALTER TABLE "BOOK_GENRE" ADD CONSTRAINT "BOOK_GENRE_BOOKS_FK1" FOREIGN KEY ("BOOK_ID")
  REFERENCES "BOOKS" ("BOOK_ID") ENABLE;
ALTER TABLE "BOOK_GENRE" ADD CONSTRAINT "BOOK_GENRE_GENRE_FK1" FOREIGN KEY ("GENRE_ID")
  REFERENCES "GENRES" ("GENRE_ID") ENABLE;
