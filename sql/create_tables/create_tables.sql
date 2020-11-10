SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
@tables/authors.sql
@tables/books.sql
@tables/genre.sql
@tables/publishers.sql
@tables/book_authors.sql
@tables/book_genre.sql
@constraints/authors.sql
@constraints/books.sql
@constraints/genres.sql
@constraints/publishers.sql
@constraints/book_authors.sql
@constraints/book_genre.sql
@indexes/authors.sql
@indexes/books.sql
@indexes/genres.sql
@indexes/publishers.sql

exit