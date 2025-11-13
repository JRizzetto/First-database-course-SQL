-- Fazer melhores análises ao invés de retornar somente os totais 
-- É o comendo do SQL que vai nos permitir criar agrupamentos, ou seja, tabelas resumos das nossas tabelas principais.

-- GROUP BY - Utilizado para criar uma consulta e descobrir o total de clientes por sexo.

SELECT 
    Sexo, 
    COUNT(*) AS 'Qtd. Clientes'
FROM clientes
GROUP BY sexo;

-- 1 - Utilize o GROUP BY para criar uma consulta e descobrir o total de clientes por sexo.
SELECT 
	Sexo,
    COUNT(*) AS 'Quantidade Clientes'
FROM clientes
GROUP BY sexo;


-- 2 - fAÇA UMA CONSULTA À TABELA DE pRODUTOS PARA RETORNAR O TOTAL DE PRODUTOS POR MARCA;
SELECT 
	Marca_Produto,
    COUNT(*) AS 'Qtd de Marcas'
FROM produtos
GROUP BY Marca_Produto;

-- 3 - Faça uma consulta a tabela de pedidos e descubra a Receita total e custos total por ID_Produto

SELECT 
	ID_Produto,
		SUM(Receita_Venda) AS 'Receita Total',
        SUM(Custo_Unit) AS 'Custo Total'
FROM pedidos
GROUP BY ID_Produto;


SELECT 
	ID_Loja,
		SUM(Receita_Venda) AS 'Receita Total',
        SUM(Custo_Unit) AS 'Custo Total'
FROM pedidos
GROUP BY ID_Loja;
