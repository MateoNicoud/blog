<?php

function lastPostData($connexion)
{
    $statement = $connexion->query("SELECT *
        FROM posts
         JOIN users
WHERE users_id = u_id
ORDER BY dateFrom DESC
LIMIT 10");
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}
function blogPostById($connexion,$gid)
{
    $statement2 = $connexion->query("SELECT *
        FROM posts
         INNER JOIN users
ON posts.users_id = users.u_id
WHERE posts.id = $gid

");
    return $statement2->fetchAll(PDO::FETCH_ASSOC);
}

function commentsByBlogPost($connexion, $gid)
{
    $statement3 = $connexion->query("SELECT
comments.content,comments.addTime,users.nickname,comments.posts_id
From comments
INNER JOIN users ON comments.users_id = users.u_id
WHERE $gid = comments.posts_id
");

    return $statement3->fetchAll(PDO::FETCH_ASSOC);
}


/*function blogPostByld($page,$gid,$id): void
{
    for ($i =0; $i<count($id);$i++) {
        if($page == "blogpost" && $gid == $id[$i]["id"]){
            //require "../ressources/".$id[$i]["id"].".php";
            echo "<br>";
            echo $id[$i]["title"];
            echo "<br>";
            echo $id[$i]["content"];
            echo "<br>";
            echo "note :".$id[$i]["priority"];
            echo "<br>";
            echo $id[$i]["dateFrom"];
            echo "<br>";
            echo $id[$i]["nickname"];
            $success= true;
        }


    }
}

function commentsByBlogPost($commentary,$gid): void
{
    for ($in = 0; $in<count($commentary);$in++) {
        if ($commentary[$in]["posts_id"] == $gid) {
            echo "<br>";
            echo $commentary[$in]["nickname"];
            echo "<br>";
            echo $commentary[$in]["content"];
            echo "<br>";
            echo $commentary[$in]["addTime"];
        }
    }
}
*/