<?php
const USER = "NMateo";
const PASSWD = "monster97";
const SERVER = "localhost";
const BASE = "blog2";
$dsn="mysql:dbname=".BASE.";host=".SERVER;
try{
    $connexion=new PDO($dsn,USER,PASSWD);
}
catch(PDOException $e){
    printf("Échec de la connexion : %s\n", $e->getMessage());
    exit();
}
