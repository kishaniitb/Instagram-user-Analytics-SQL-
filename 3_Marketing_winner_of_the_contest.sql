USE ig_clone;

SELECT
    u.username,
    ph.id,
    ph.image_url,
    COUNT(*) AS Total
FROM photos ph
INNER JOIN likes l ON ph.id = l.photo_id
INNER JOIN users u ON u.id = ph.user_id
GROUP BY ph.id
ORDER BY Total DESC
LIMIT 1;
