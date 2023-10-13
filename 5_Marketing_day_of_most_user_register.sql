USE ig_clone;

SELECT
    DATE_FORMAT(created_at, '%W') AS Day_of_Week,
    COUNT(*) AS Total
FROM users
GROUP BY Day_of_Week
ORDER BY Total DESC
LIMIT 2;
