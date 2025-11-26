-- 1 - INSIRA 5 USUÁRIOS
SELECT * FROM users;

INSERT INTO users (first_name, last_name, email, password_hash, salary)
VALUES 
('Amália', 'Rizzetto', 'amalia@gmail.com', 'a1234', '2300'),
('Janaina', 'Rizzetto', 'janaina@gmail.com', 'j1234', '3300'),
('Sulen', 'Fogo', 'suelen@gmail.com', 's1234', '4300'),
('Cristiano', 'Ronaldo', 'ronaldo@gmail.com', 'r1234', '2300'),
('Lucas', 'Barrios', 'barrios@gmail.com', 'b1234', '2300');

-- 2 - Insira 5 perfís para os usuários inseridos
SELECT * FROM profiles;

INSERT INTO profiles (bio, description, user_id)
VALUES 
('Uma bio', 'Uma description', (SELECT id FROM users where email = 'amalia@gmail.com')),
('Uma bio', 'Uma description', (SELECT id FROM users where email = 'janaina@gmail.com')),
('Uma bio', 'Uma description', (SELECT id FROM users where email = 'suelen@gmail.com')),
('Uma bio', 'Uma description', (SELECT id FROM users where email = 'ronaldo@gmail.com')),
('Uma bio', 'Uma description', (SELECT id FROM users where email = 'barrios@gmail.com'))

3 - Insira permissões para os usuários inseridos
INSERT INTO users_rols (user_id, role_id) 
VALUES 
((SELECT id FROM users WHERE email = 'amalia@gmail.com'), (SELECT id FROM roles WHERE name = 'PUT')), 
((SELECT id FROM users WHERE email = 'janaina@gmail.com'), (SELECT id FROM roles WHERE name = 'GET')), 
((SELECT id FROM users WHERE email = 'suelen@gmail.com'), (SELECT id FROM roles WHERE name = 'DELETE')), 
((SELECT id FROM users WHERE email = 'ronaldo@gmail.com'), (SELECT id FROM roles WHERE name = 'POST')), 
((SELECT id FROM users WHERE email = 'barrios@gmail.com'), (SELECT id FROM roles WHERE name = 'POST')), 
((SELECT id FROM users WHERE email = 'ronaldo@gmail.com'), (SELECT id FROM roles WHERE name = 'PUT')), 
((SELECT id FROM users WHERE email = 'barrios@gmail.com'), (SELECT id FROM roles WHERE name = 'DELETE'));

-- 4 - Selecione os últimos 5 usuários por ordem decrescente 
SELECT * FROM users 
ORDER BY id DESC 
LIMIT 5;

-- 5 - Atualize o resgistro do último usuário
UPDATE users 
SET first_name = 'Vitor', last_name = 'Roque'
WHERE id = 118


-- 6 - Remova a pemissão de um dos usuários 
DELETE FROM users_rols 
WHERE user_id = (SELECT id FROM users WHERE email = 'barrios@gmail.com') 
AND role_id = (SELECT id FROM roles WHERE name = 'POST');

-- 7 - Remova um susuário que tem a premissão 'PUT'
-- SELECT u.id as uid, u.first_name 
DELETE u 
FROM users AS u
INNER JOIN users_rols AS ur ON u.id = ur.user_id
INNER JOIN roles r ON ur.role_id = r.id 
WHERE r.name = 'PUT' AND u.id = 114;


-- 8 - Selecione usuários com perfís e permissões
SELECT u.id as uid, u.first_name, r.name, p.bio 
FROM users AS u
INNER JOIN users_rols AS ur ON u.id = ur.user_id
INNER JOIN roles r ON ur.role_id = r.id 
INNER JOIN profiles p ON p.user_id = u.id;

-- 9 - Selecione usuários com perfís e permissões (opcional)
SELECT u.id as uid, u.first_name, r.name, p.bio 
FROM users AS u
LEFT JOIN users_rols AS ur ON u.id = ur.user_id
LEFT JOIN roles r ON ur.role_id = r.id 
LEFT JOIN profiles p ON p.user_id = u.id;

-- 10 - Selecione usuários com perfís e permissões ordenando por salário
SELECT u.id as uid, u.first_name, r.name, p.bio, u.salary
FROM users AS u
INNER JOIN users_rols AS ur ON u.id = ur.user_id
INNER JOIN roles r ON ur.role_id = r.id 
INNER JOIN profiles p ON p.user_id = u.id
ORDER BY salary DESC;









