
--------------------------------------------------------
--  SHOW TABLESPACE FREE SPACE 
--------------------------------------------------------
SELECT TABLESPACE_NAME,SUM(BYTES)/1024/1024/1024 "FREE SPACE(GB)" FROM DBA_FREE_SPACE GROUP BY TABLESPACE_NAME;

--  Displaying the Free Space (Extents) in a Tablespace
SELECT TABLESPACE_NAME, FILE_ID, BYTES, BLOCKS FROM DBA_FREE_SPACE WHERE TABLESPACE_NAME='SMUNDO';



