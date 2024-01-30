<?php
/*

$commentary = comments($connexion);
for ($in =0; $in<count($commentary);$in++) {
    if ($commentary[$in]["posts_id"] == $gid) {
        echo "<br>";
        echo $commentary[$in]["nickname"];
        echo "<br>";
        echo $commentary[$in]["content"];
        echo "<br>";
        echo $commentary[$in]["addTime"];
    }
}