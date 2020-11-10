--------------------------------------------------------
--  SHOW PARAMETERS
--------------------------------------------------------

select name from v$controlfile;
show parameter db_files;
show parameter memory_target;
show sga;
show parameter undo_tablespace;
show parameter UNDO_RETENTION;