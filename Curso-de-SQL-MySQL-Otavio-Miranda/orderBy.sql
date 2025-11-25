-- Limite limita a quandidad e de valores 
-- Offset entrega os próximos valores 


SELECT id, first_name, email as uemail
FROM users
WHERE id BETWEEN 50 AND 60
ORDER BY first_name desc
LIMIT 5;

SELECT id, first_name, email as uemail
FROM users
WHERE id BETWEEN 50 AND 60
ORDER BY first_name desc
LIMIT 2 OFFSET 0;

SELECT id, first_name, email as uemail
FROM users
WHERE id BETWEEN 50 AND 60
ORDER BY id asc
LIMIT 2 OFFSET 2;

SELECT id, first_name, email as uemail
FROM users
WHERE id BETWEEN 50 AND 60
ORDER BY id asc
LIMIT 2 OFFSET 4;

SELECT id, first_name, email as uemail
FROM users
WHERE id BETWEEN 50 AND 70
ORDER BY id asc
LIMIT 9, 3;

