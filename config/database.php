<?php
define('USER',"NMateo");
define('PASSWD',"monster97");
define('SERVER',"localhost");
define('BASE',"blog2");
$dsn="mysql:dbname=".BASE.";host=".SERVER;
try{
    $connexion=new PDO($dsn,USER,PASSWD);
}
catch(PDOException $e){
    printf("Échec de la connexion : %s\n", $e->getMessage());
    exit();
}