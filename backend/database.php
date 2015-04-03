<?php
// function to initiate db connection
// returns PDO object
function Database(){
	$dbhost = "localhost";
	$dbname = "ama";
	$dbuser = "root";
	$dbpass =  "root";
    $dsn = "mysql:host=".$dbhost.";dbname=".$dbname;

    try {
        $conn = new PDO($dsn,$dbuser,$dbpass);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        $mess = $e->getMessage();
        echo $mess;
    }
    return $conn;
}