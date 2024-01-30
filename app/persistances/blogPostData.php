<?php

function lastPostData($connexion)
{
    $statement = $connexion->query('SELECT *
        FROM posts
         JOIN users
WHERE users_id = u_id
ORDER BY dateFrom DESC
LIMIT 10');
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}
function idPost($connexion)
{
    $statement = $connexion->query('SELECT *
        FROM posts
         INNER JOIN users
ON posts.users_id = users.u_id
ORDER BY dateFrom DESC');
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}

function comments($connexion)
{
    $statement = $connexion->query('SELECT
comments.content,comments.addTime,users.nickname,comments.posts_id
From comments
INNER JOIN users ON comments.users_id = users.u_id');
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}
