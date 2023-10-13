USE ig_clone;

SELECT
    tags.tag_name,
    tags.id,
    photo_tags.photo_id,
    COUNT(photo_tags.tag_id) AS TagCount
FROM tags
INNER JOIN photo_tags ON tags.id = photo_tags.tag_id
GROUP BY tags.tag_name, tags.id, photo_tags.photo_id
ORDER BY TagCount DESC
LIMIT 5;
