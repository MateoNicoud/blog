<?php
include "../app/persistances/blogPostData.php";
$title = filter_input(INPUT_POST, "title", FILTER_SANITIZE_URL);
$content = filter_input(INPUT_POST, "content", FILTER_SANITIZE_URL);
$priority = filter_input(INPUT_POST, "priority", FILTER_SANITIZE_URL);
if (!empty($title && $content && $priority)) {
    blogPostCreate($connexion, $title, $content, $priority);
}
include '../ressources/views/blogPostCreate.tpl.php';