-- DELETE 

DELETE FROM users WHERE id = 21; 

SELECT * FROM users
WHERE id BETWEEN 20 AND 25;

-- Delete apaga registros da tabela 
DELETE FROM users WHERE id BETWEEN 110 AND 115;

-- Aviso: use SELECT para garantir que está 
-- apagando os valores corretos;
SELECT * FROM users WHERE id BETWEEN 110 AND 115;