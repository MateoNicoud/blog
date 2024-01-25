<?php
echo "Hello world";
include "../app/persistances/blogPostData.php";
$queryArray = lastPostData($connexion);
$id = idPost($connexion);
include "../ressources/views/home.tpl.php";