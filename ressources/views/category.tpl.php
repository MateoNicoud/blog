<h2>liste des posts dans la catégorie : <?=$gName?></h2>
<?php
//var_dump($theCategory);
for ($ind=0;$ind<count($theCategory);$ind++){
?>
<br>
<a href="http://blog.local/index.php?action=blogpost&id=<?=$theCategory[$ind]["id"]?>"><?=$theCategory[$ind]["title"]?></a>
<?php }?>
