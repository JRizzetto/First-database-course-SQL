-- Selecionar mais de uma tabela

SELECT *
FROM users as u, profiles as p;

SELECT u.id AS uid, p.id AS pid
FROM users as u, profiles as p;

SELECT u.id AS uid, p.id AS pid
FROM users as u, profiles as p
WHERE u.id = p.user_id;

SELECT u.id AS uid, p.id AS pid,
p.bio, u.first_name
FROM users as u, profiles as p
WHERE u.id = p.user_id;