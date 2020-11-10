--------------------------------------------------------
--  SHOW TABLESPACE FREE SPACE 
--------------------------------------------------------
set echo on
select name from v$tablespace;
select tablespace_name, extent_management,force_logging, block_size, segment_space_management from dba_tablespaces;