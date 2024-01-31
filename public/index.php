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
    "../app/controllers/blogPostCreateController.php" => "blogPostCreate",
);

$page = filter_input(INPUT_GET, "action", FILTER_SANITIZE_URL);
$gid = filter_input(INPUT_GET, "id", FILTER_SANITIZE_URL);
$gName = filter_input(INPUT_GET, "name", FILTER_SANITIZE_URL);
//$page= ($page!=='') ? (array_key_exist($page, $route) ? $page : '404') : 'index';
global $connexion;
global $gid;
if ($page == "blogpost" && isset($gid)) {
    include "../app/controllers/blogPostController.php";
} elseif ($page == "blogPostUpdate" && isset($gid)) {
    include "../app/controllers/blogPostModifyController.php";
    $success = true;
} elseif ($page == "blogPostDelete" && isset($gid)) {
    include "../app/controllers/blogPostDeleteController.php";
    $success = true;
} elseif ($page == "blogPostCategory" && isset($gName)) {
    include "../app/controllers/blogPostByCategoryController.php";
    $success = true;
} else {
    foreach ($route as $key => $value) {
        if ($page == $value) {
            include $key;
            $success = true;

        }
    }
    if (empty($page)) {
        $success = true;
        include "../app/controllers/homeController.php";
    }
}
if (!$success) {
    include '../ressources/views/errors/404.php';
}