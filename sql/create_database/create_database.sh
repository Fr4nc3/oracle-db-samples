#!/bin/sh
PATH=$ORACLE_HOME/bin:$ORACLE_HOME/perl/bin:$PATH; export PATH

# Assign the filename
filename="create_database.sql"
search="NEW_DATABASE" # database variable
# Take the new database name string
read -p "Enter the new database name: " database

if [[ $search != "" && $database != "" ]]; then
echo $search
echo $database 
echo $filename
sed -i "s/$search/$database/gi" $filename
fi
# start sqlplus and create new database
 /opt/oracle/product/19c/dbhome_1/bin/sqlplus /nolog @create_database.sql

# put back the original file for create new databases
if [[ $search != "" && $database != "" ]]; then
sed -i "s/$database/$search/" $filename
fi