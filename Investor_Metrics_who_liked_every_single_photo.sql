USE ig_clone;

SELECT
    u.username,
    COUNT(*) AS Number_of_likes
FROM users u
INNER JOIN likes l
ON l.user_id = u.id
GROUP BY u.id
HAVING Number_of_likes = (SELECT COUNT(*) FROM photos);
