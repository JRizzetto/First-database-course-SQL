-- 

SELECT first_name,
COUNT(id) AS total FROM users 
GROUP BY first_name 
ORDER BY total DESC;

SELECT u.first_name,
COUNT(u.id) AS total
FROM users u 
LEFT JOIN profiles p 
ON p.user_id = u.id
WHERE u.id = 8
GROUP BY first_name
ORDER BY total DESC
LIMIT 5;