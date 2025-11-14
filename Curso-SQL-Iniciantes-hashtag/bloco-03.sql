-- BLOCO 03: ANÁLISE DE DADOS NO SQL

-- FUNÇÃO COUNT - 
SELECT COUNT(Nome_Produto) FROM produtos;
SELECT COUNT(Marca_Produto) FROM produtos;
SELECT COUNT(Preco_Unit) FROM produtos;
SELECT COUNT(Preco_Unit) FROM produtos;

SELECT COUNT(Nome) FROM clientes;
SELECT COUNT(Email) FROM clientes;
-- No caso da coluna de telefone a contagem de linhas é menor do que o restante porque em alguns casos as linhas são de valor 'NULL'
SELECT COUNT(Telefone) FROM clientes;

-- MELHOR FORMA DE CONTAGEM TOTAL 
SELECT COUNT(*) FROM clientes;

-- PARA CRIAR AGRUPAMENTOS: GROUP BY
SELECT 
	Marca_Produto,
    COUNT(*)
FROM produtos
GROUP BY Marca_Produto
ORDER BY COUNT(*);

SELECT
	Escolaridade,
    COUNT(*)
FROM clientes
WHERE Sexo = "M"
GROUP BY Escolaridade;

-- USANDO HAVING COM GROUP BY
SELECT 
	Escolaridade,
    COUNT(*)
FROM clientes
GROUP BY Escolaridade
HAVING COUNT(*) >= 25;

-- RELACIONAMENTO ENTRE TABELAS EM SQL: JOIN
-- INNER JOIN
-- RELACIONE AS TABELAS PRODUTOS E CATEGORIA
SELECT 
	produtos.Nome_Produto,
    produtos.ID_Categoria,
    produtos.Marca_Produto,
    categorias.Categoria
FROM produtos
INNER JOIN categorias
ON produtos.ID_Produto = categorias.ID_Categoria;

-- RELACIONAR AS TABELAS DE PRODUTOS COM PEDIDOS
SELECT 
	produtos.*,
    pedidos.*
FROM produtos
INNER JOIN pedidos
ON produtos.ID_Produto = pedidos.ID_Produto;

-- EXERCÍCIO: TOTAL DE RECEITA POR MARCA DE PRODUTO
SELECT 
	produtos.Marca_Produto,
    SUM(pedidos.Receita_Venda)
FROM pedidos
INNER JOIN produtos
ON pedidos.ID_Produto = produtos.ID_Produto
GROUP BY produtos.Marca_Produto;

SELECT 
	pr.Marca_Produto,
    SUM(pe.Receita_Venda)
FROM pedidos pe
INNER JOIN produtos pr
ON pe.ID_Produto = pr.ID_Produto
GROUP BY pr.Marca_Produto;

-- EPATA 01: DESCOBRIR A MÉDIA DE PREÇO 
SELECT AVG(Preco_Unit) FROM produtos;

-- EPATA 02: FILTRAR A TABELA DE PRODUTOS COM A MÉDIA DE PREÇO 
SELECT
	*
FROM produtos
WHERE Preco_Unit >= (SELECT AVG(Preco_Unit) FROM produtos);

-- COMO CRIAR OU GUARDAR OS DADOS 
CREATE VIEW viewClienteM as 
SELECT 
	*
FROM clientes
WHERE Sexo = 'M';

SELECT * FROM viewClienteM;