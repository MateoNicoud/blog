<?php include"../ressources/views/layouts/header.tpl.php";
//var_dump($contentblogPost);
//var_dump($getCom);
if (!empty($contentblogPost)){
$success=true;
}
include"../ressources/views/layouts/footer.tpl.php";


    ?>
        <br>
        <h2><?=$contentblogPost[0]["title"]?>
        </h2>
        <br>
        <span>
            <?=$contentblogPost[0]["content"]?>
        </span>
        <br>
        <span>
            <?=$contentblogPost[0]["dateFrom"]?>
        </span>
        <br>
        <h2>Commentaires</h2>
<?php if(empty($getCom)){
    echo "<br> No commentaries";
}  else{



for ($ind=0;$ind<count($contentblogPost);$ind++){ ?>
        <br>
        <span><?=$getCom[$ind]["content"]?>
        </span>
        <br>
        <span><?=$getCom[$ind]["nickname"]?>
        </span>
        <br>
        <span><?=$getCom[$ind]["addTime"]?>
        </span>


<?php }}?>