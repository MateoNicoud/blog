<?php
include "../app/persistances/blogPostData.php";

echo "<h2>Post</h2>";
/*
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

}*/
blogPostByld($page,$gid,$id);
echo "<h2>comments</h2>";
/*
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
*/
commentsByBlogPost($commentary,$gid);