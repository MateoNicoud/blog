<?php

include "../ressources/views/layouts/header.tpl.php";

if (empty($queryArray)) {
    echo "y'a pas d'article";
} else {
    echo "<article>";
    echo "<br>";
    echo "<br>";
    foreach ($queryArray as $row) {
        ?>
        <br>
        <h2><a href="http://blog.local/index.php?action=blogpost&id=<?=$row["id"]?>"><?= $row["title"] ?></a>
        </h2>
        <br>
        <span>
            <?= $row["content"] ?>
        </span>
        <br>
        <span>
            <?= $row["dateFrom"] ?>
        </span>

    <?php }
    echo "</article>";
}

include "../ressources/views/layouts/footer.tpl.php";