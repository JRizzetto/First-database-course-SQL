-- Inner join retorna quando os valores das duas tabelas existem
-- Left Join - Quando eu quero pegar todos os registros da tabela da esquerda e trás mesmo que os da direita não existam 
-- Right  Join - Quando eu quero pegar todos os registros da tabela da direita e trás mesmo que os da esquerda não existam 

-- Nesse caso os registros das duas, mesmo não relacionadas, perceba que na consulta os valores "nulls" também aparecem
SELECT u.id AS uid, p.id AS pid,
p.bio, u.first_name
FROM users as u
LEFT JOIN profiles p
ON u.id = p.user_id