<?php
include "../app/persistances/blogPostData.php";
$theCategory = blogPostsByCategory($connexion,$gName);
/*$contentblogPost = blogPostById($connexion, $gid);
$getCom = commentsByBlogPost($connexion, $gid);*/
include '../ressources/views/category.tpl.php';