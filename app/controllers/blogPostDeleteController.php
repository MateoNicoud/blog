<?php
include "../app/persistances/blogPostData.php";

    blogPostDelete($connexion,$gid);

header('Location: http://blog.local/');