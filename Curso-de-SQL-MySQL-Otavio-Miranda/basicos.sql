-- Seleciona a base de dados
use curso_db;

-- Mostra as tabelas da base de dados 
SHOW tables;

-- Descreve as colunas da tabela 
DESCRIBE users;

-- inserir registros na base de dados
INSERT INTO users (first_name, last_name, email, password_hash) VALUES 
("Helena", "ABC", '123@gmail.com', '1'),
("Joana", "BCA", '321@gmail.com', '2'),
("Rosana", "DAS", '231@gmail.com', '3');

-- Como selecionar todas as colunas 
SELECT * FROM users;

-- Como colunas especificas
SELECT email, id, first_name 
FROM users;

-- Como colunas especificas com apelidos
SELECT 
u.email uemail, u.id uid, u.first_name ufirst_name
FROM users AS u;



