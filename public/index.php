<?php
/*echo "Bienvenue sur le blog";
if ($_GET["action"] == "lenomdelaction"){
    include"../ressources/views/layouts/footer.php";
} if ($_GET["action"]=false){
    include "../ressources/views/errors/404.php";
} else {
    include '../ressources/views/errors/404.php';
}
*/
include "../config/database.php";
$success = false;
$route = array(
    "../ressources/views/layouts/footer.php" => "hobbies",
);

$page = filter_input(INPUT_GET,"action", FILTER_SANITIZE_URL);
$gid = filter_input(INPUT_GET,"id", FILTER_SANITIZE_URL);

if($page == "blogpost" &&  isset($gid)){
    include "blogPostController.php";
} else {
foreach ($route as  $key => $value) {
    if ($page == $value) {
        include $key;
        $success= true;

    }
}
if(empty($page)){
    $success = true;
    include "../app/controllers/homeController.php";
}
} if(!$success){
    include '../ressources/views/errors/404.php';
}