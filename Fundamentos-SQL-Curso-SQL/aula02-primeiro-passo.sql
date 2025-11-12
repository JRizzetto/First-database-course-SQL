// fundamentos básicos do SQL
-- Exemplo 1 - Selecionando todas as linhas e colunas da:
-- a) tabela pedidos
SELECT * FROM pedidos;
-- b) tabela CLIENTES
SELECT * FROM clientes;
-- Exemplo 2 - Selecionar apenas algumas colunas da tabela de clientes 
-- ID_cliente, Nome, data de nascimento, estado civil, email
SELECT 
    ID_Cliente AS 'ID Cliente', 
    Nome AS 'Nome do Cliente', 
    Data_Nascimento AS 'Data de nascimento', 
    Estado_Civil AS 'E-mail do Cliente', 
    Email 
FROM clientes;

-- Exemplo 3 - Selecionar apenas as 5 primeiras linhas da tabela de produtos
SELECT * FROM produtos 
LIMIT 5;

-- Exemplo 4 - Selecionar todas as linhas da tabela produtos 
-- Ordenando pela coluna Preco_Unit
SELECT * FROM produtos
ORDER BY Preco_Unit;

SELECT * FROM produtos
ORDER BY Preco_Unit DESC;

## 10 COMANDOS EM SQL QUE VOCÊ PRECISA SABER ##
-- 1 - Criação de banco de dados
CREATE DATABASE hashtag; 

-- 2 - Seleção do Banco de Dados: USE DATABASE
use hashtag;

-- 3 - Criação da tabela no banco de Dados Selecionado: CREATE TABLE
CREATE TABLE Vendas(
ID_Venda INT,
Curso VARCHAR(100),
Alun VARCHAR(100),
Estado VARCHAR(100),
Valor DECIMAL(10, 2)
);

-- 4 - Incluir dados na tabela: INSERT INTO
INSERT INTO Vendas(ID_Venda, Curso, Aluno, Estado, Valor)
VALUES
	(1, 'Excel', 'João', 'SP', 100),
    (2, 'VBA', 'Lucas', 'RJ', 50),
    (3, 'Excel', 'Alice', 'SP', 100),
    (4, 'Excel', 'Pedro', 'PE', 100),
    (5, 'VBA', 'Amanda', 'BA', 50);
    
-- 5 - Selecionar dados de uma tabela: SELECT
SELECT * FROM Vendas;
SELECT Aluno, Curso, Valor FROM Vendas;

-- 6 - Ordenar dados em uma tabela: ORDER BY
SELECT * FROM Vendas
ORDER BY Aluno;

-- 7 - Filtrar dados em uma tabela: WHERE
SELECT * FROM Vendas
WHERE Estado = 'RJ';

-- 8 - Alteração de valores dentro da tabela: UPDATE
UPDATE Vendas
SET Valor = 150
WHERE Curso = 'VBA';
SELECT * FROM Vendas;

-- 9 - Exclusão de linhas da tabela: DELETE
DELETE FROM Vendas
WHERE ID_Venda = 10;
SELECT * FROM Vendas;

-- 10 - Exclusão de todos os dados de uma tabela: TRUNCATE
TRUNCATE TABLE Vendas 