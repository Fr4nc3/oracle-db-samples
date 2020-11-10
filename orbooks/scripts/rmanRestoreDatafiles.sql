connect target sys/&1;
 
CATALOG START WITH   '/opt/oracle/product/19c/dbhome_1/assistants/dbca/templates//Seed_Database.dfb'  NOPROMPT  ;

RUN {  

set newname for datafile 1 to  '/u02/oradata/ORBOOKS/system01.dbf' ; 

set newname for datafile 3 to  '/u02/oradata/ORBOOKS/sysaux01.dbf' ; 

set newname for datafile 4 to  '/u02/oradata/ORBOOKS/undotbs01.dbf' ; 

set newname for datafile 7 to  '/u02/oradata/ORBOOKS/users01.dbf' ; 

restore datafile 1; 

restore datafile 3; 

restore datafile 4; 

restore datafile 7; }
