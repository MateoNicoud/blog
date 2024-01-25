<?php
include "../app/persistances/blogPostData.php";
$id = idPost($connexion);
for ($i =1; $i<=count($id);$i++) {

    if($page == "blogpost" && $gid == $id[$i]["id"]){
        echo "../ressources/views/".$id[$i]["id"].".php";

        require "../ressources/views/".$id[$i]["id"].".php";
        $success= true;
    }
}