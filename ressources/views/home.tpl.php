<?php

    include"../ressources/views/layouts/header.tpl.php";

    if (empty($queryArray)){
        echo "y'a pas d'article";
    } else {
        echo "<article>";
        echo "<br>";
        echo "id"."     "."title"."     "."content"."     "."dateFrom"."     "."dateUntil"."     "."priority"."     "."users_id"."     "."u_id"."     "."nickname"."     "."nickname"."     "."last_name"."     "."first_name";
        echo "<br>";
        foreach ($queryArray as $row){
            print $row["id"]. "     ";
            print $row["title"]. "     ";
            print $row["content"]. "     ";
            print $row["dateFrom"]. "     ";
            print $row["dateUntil"]. "     ";
            print $row["priority"]. "     ";
            print $row["users_id"]. "     ";
            print $row["u_id"]. "     ";
            print $row["nickname"]. "     ";
            print $row["last_name"]. "     ";
            print $row["first_name"]. "<br>";
        }
        echo "</article>";
    }

    include"../ressources/views/layouts/footer.tpl.php";