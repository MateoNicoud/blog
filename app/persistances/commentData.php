<?php
function blogCommentCreate($connexion,$content,$nickname,$post_id):void {

    $connexion->query("INSERT INTO comments
(comments.content,comments.addTime,comments.users_id,comments.posts_id)
VALUES
('$content',CURDATE(),$nickname, $post_id);
");
}

function blogComment($connexion,$gid) {
    $commentList=$connexion->query("SELECT *
        FROM comments
         INNER JOIN users
ON comments.users_id = users.u_id
WHERE comments.id = $gid;
return  $commentList;
");
}

function blogCommentaryUpdate($connexion,$content,$gid) : void {

     $connexion->query("UPDATE comments
SET content = '$content', addTime = CURDATE()
WHERE id = $gid");
}
function blogPostDelete($connexion,$gid) :void{
    $connexion->query("DELETE FROM comments WHERE id = $gid;");
}