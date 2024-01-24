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
$success = false;
$route = array(
    "../ressources/views/errors/404.php" => "action",
    "../ressources/views/layouts/footer.php" => "hobbies",
);
$page = filter_input(INPUT_GET,"action", FILTER_SANITIZE_URL);
foreach ($route as  $key => $value) {
    if ($page == $value) {
        include $key;
        $success= true;

    }

} if(!$success){
    include '../ressources/views/errors/404.php';
}