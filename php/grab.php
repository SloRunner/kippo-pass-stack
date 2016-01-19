<?php
define("host", "localhost"); //set host
define("database", "kippo"); //database
define("user", "kippo"); //user that uses database
define("password", "Kippo-DB-pass"); //password for that user

//-------------------------GENERATOR CODE------------------------
$mysqli = new mysqli(host, user, password, database);

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

if($result = $mysqli->query("select username, password from auth;")) {
    while($row = mysqli_fetch_assoc($result)){
     echo $row['username'].':0:'.$row['password'].PHP_EOL;
    }
    $result->close();
}
$mysqli->close();
//----------------------------END OF CODE------------------------
