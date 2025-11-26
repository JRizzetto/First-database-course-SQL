-- Como fazer SELECT e UPDATE

SELECT u.first_name, p.bio
FROM users u 
JOIN profiles p 
ON p.user_id = u.id
WHERE u.first_name = 'Katelyn';

UPDATE users AS u
JOIN profiles AS p 
ON p.user_id = u.id
SET p.bio = CONCAT(p.bio, ' Atualizado')
WHERE u.first_name = 'Katelyn';