<?php
include "../app/controllers/homeController.php";
$success=false;
$page = filter_input(INPUT_POST,"id", FILTER_SANITIZE_URL);
foreach ($id as  $value) {
    if ($page == $value) {
        include "../ressources/views/".$value.".php";
        $success= true;

    }
}