#!/usr/bin/perl
use DBI;
use DBD::mysql;

# CONFIG VARIABLES

$database = "kippo";
$host = "localhost";
$tablename = "kippo";
$user = "kippo";
$pw = "Kippo-DB-pass";

#ADVANCED CONFIG
$platform = "mysql";
$port = "3306";
#-------------------------GENERATOR CODE------------------------
$dsn = "dbi:mysql:$database:$host:3306";

# PERL DBI CONNECT
$connect = DBI->connect($dsn, $user, $pw);

# PREPARE THE QUERY
$query = "select username, password from auth";
$query_handle = $connect->prepare($query);

# EXECUTE THE QUERY
$query_handle->execute();

# BIND TABLE COLUMNS TO VARIABLES
$query_handle->bind_columns(\$user, \$password);

# LOOP THROUGH RESULTS
while($query_handle->fetch()) {
   print "$user:0:$password\n";
}
#----------------------------END OF CODE------------------------