<?php
echo "Hello world";
include "../app/persistances/blogPostData.php";
$queryArray = lastPostData($connexion);
var_dump($queryArray);