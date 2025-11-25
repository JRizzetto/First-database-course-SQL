-- Inner join retorna quando os valores das duas tabelas existem
-- Left Join - Quando eu quero pegar todos os registros da tabela da esquerda e trás mesmo que os da direita não existam 
-- Right  Join - Quando eu quero pegar todos os registros da tabela da direita e trás mesmo que os da esquerda não existam 

-- Nesse caso os registros das duas tabelas precisam estar relacionadosp ara aparecer a consulta
SELECT u.id AS uid, p.id AS pid,
p.bio, u.first_name
FROM users as u, profiles as p
WHERE u.id = p.user_id;

DELETE FROM profiles 
WHERE id BETWEEN 265 AND 267;

SELECT u.id AS uid, p.id AS pid,
p.bio, u.first_name
FROM users as u
INNER JOIN profiles p
ON u.id = p.user_id
WHERE u.first_name LIKE '%a'
ORDER BY u.first_name desc
LIMIT 10;