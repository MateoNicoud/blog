<?php
include "../app/persistances/blogPostData.php";

blogPostCreate($title,$content,$priority,$users_id);
include '../ressources/views/blogPostCreate.tpl.php';