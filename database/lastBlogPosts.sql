SELECT *
FROM posts
         JOIN users
WHERE users_id = u_id
ORDER BY dateFrom DESC
    LIMIT 10;