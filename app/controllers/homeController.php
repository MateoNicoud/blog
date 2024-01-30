<?php
include "../app/persistances/blogPostData.php";
$queryArray = lastPostData($connexion);
include "../ressources/views/home.tpl.php";