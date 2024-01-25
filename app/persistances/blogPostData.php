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
    $statement = $connexion->query('SELECT id
        FROM posts
         JOIN users
WHERE users_id = u_id
ORDER BY dateFrom DESC
LIMIT 10');
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}