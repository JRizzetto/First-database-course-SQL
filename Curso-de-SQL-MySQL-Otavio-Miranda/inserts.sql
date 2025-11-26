-- Como inserir permissões para usuários 

INSERT INTO roles (name)
VALUES
('POST'), ('PUT'), ('DELETE'), ('GET');


INSERT INTO users_rols (user_id, role_id)
VALUES
(8, 3);

SELECT user_id, role_id 
FROM users_rols 
WHERE user_id = 8 AND role_id = 3;

SELECT id, 
(SELECT id FROM roles ORDER BY RAND() LIMIT 1) as qualquer 
FROM users;

INSERT IGNORE INTO users_rols(user_id, role_id)
SELECT id, 
(SELECT id FROM roles ORDER BY RAND() LIMIT 1) as qualquer 
FROM users 
ORDER BY RAND() LIMIT 5;