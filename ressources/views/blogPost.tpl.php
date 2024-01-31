<?php include"../ressources/views/layouts/header.tpl.php";
var_dump($contentblogPost);
var_dump($getCom);
if (!empty($contentblogPost)){
$success=true;
}
include"../ressources/views/layouts/footer.tpl.php";

    for ($ind=0;$ind<count($contentblogPost);$ind++){
    ?>
    <br>
    <span><?=$contentblogPost[$ind]["title"]?><span>
        <br>
        <span><?=$contentblogPost[$ind]["content"]?><span>
<?php }?>