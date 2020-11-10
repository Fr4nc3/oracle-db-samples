#!/bin/sh
# Assign the filename
filename="create_aditional_tablespaces.sql"
search="NEW_DATABASE" # database variable
# Take the new database name string
read -p "Enter the  database name: " database

if [[ $search != "" && $database != "" ]]; then
echo $search
echo $database 
echo $filename
sed -i "s/$search/$database/gi" $filename
ORACLE_SID=$database; export ORACLE_SID
PATH=$ORACLE_HOME/bin:$ORACLE_HOME/perl/bin:$PATH; export PATH
fi
# start sqlplus and create new database
 /opt/oracle/product/19c/dbhome_1/bin/sqlplus  @create_aditional_tablespaces.sql

# put back the original file for create new databases
if [[ $search != "" && $database != "" ]]; then
sed -i "s/$database/$search/" $filename
fi