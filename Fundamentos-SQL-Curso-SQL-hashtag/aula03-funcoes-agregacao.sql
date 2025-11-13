-- COUNT - Retornar a quantidade total de linhas de uma tabela
SELECT 
	COUNT(nome)
FROM clientes;

SELECT 
	COUNT(ID_Produto)
FROM produtos;

SELECT 
	COUNT(*)
FROM lojas;

-- COUNT(DISTINCT) - Retorna a contagem distinta de valores de uma tabela
SELECT 
	COUNT(DISTINCT Escolaridade)
FROM clientes;

SELECT
	COUNT(DISTINCT Estado)
FROM locais;

SELECT 
	COUNT(DISTINCT Categoria)
FROM categorias;

-- SUM - RETORNA A SOMA TOTAL 
SELECT 
	SUM(Receita_vendas)
FROM pedidos;

SELECT 
	SUM(Custo_Venda)
FROM pedidos;

SELECT 
	SUM(Qtd_Vendida) AS Quantidade_Vendida
FROM pedidos;

-- AVG - Retorna a média dos valores de uma coluna 
SELECT 
	AVG(Receita_vendas)
FROM pedidos;

SELECT 
	SUM(Qtd_Vendida) AS 'Quantidade_Vendida',
    AVG(Receita_Venda) AS 'Média de Receita',
    MIN(Receita_Venda) AS 'Menor Receita',
    MAX(Receita_Venda) AS 'maior Receita'
FROM pedidos;

-- MIN - Retrorna o valor minimo de uma coluna 
SELECT 
	MIN(Receita_vendas)
FROM pedidos;

-- MAX - Retrorna o valor máximo de uma coluna
SELECT 
	MAX(Receita_vendas)
FROM pedidos;