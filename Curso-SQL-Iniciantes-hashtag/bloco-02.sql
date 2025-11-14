-- BLOCO 2: PRIMEIROS CÓDIGOS NO SQL
SELECT * FROM produtos;

-- SELECIONANDO TODAS AS COLUNAS DE UMA TABELA
SELECT * FROM produtos;
SELECT * FROM categorias;
SELECT * FROM clientes;
SELECT * FROM locais;

-- SELECIONANDO ALGUMAS AS COLUNAS DE UMA TABELA
SELECT 
	Nome, 
    Email, 
    Telefone, 
    Renda_Anual 
FROM clientes;

-- DAR NOMES AS COLUNAS
SELECT 
	Nome AS "Nome Completo", 
    Email AS "E-mail", 
    Telefone AS "Tel", 
    Renda_Anual 
FROM clientes;

-- TRABALHAR COM VALORES DISTINTOS: DISTINCT
SELECT distinct Marca_Produto FROM produtos;

-- ORDENAR AS INFORMAÇÕES DE UMA TABELA: ORDER BY
SELECT * FROM produtos 
ORDER BY Preco_Unit ASC;

SELECT * FROM produtos 
ORDER BY Preco_Unit DESC;

-- ORDENAR EM ÓRDEM ALFABÉTICA
SELECT * FROM clientes
ORDER BY Nome ASC;

SELECT * FROM clientes
ORDER BY Nome ASC, Sobrenome ASC;

SELECT * FROM clientes
ORDER BY Nome ASC, Sobrenome ASC
LIMIT 10;

-- FILTROS: WHERE 
SELECT * FROM 
	clientes
WHERE Qtd_Filhos > 0;

SELECT * FROM 
	clientes
WHERE Renda_Anual > 50000
ORDER BY Renda_Anual;

SELECT * FROM 
	clientes
WHERE Escolaridade = 'Parcial';

SELECT * FROM 
	produtos
WHERE Marca_Produto = 'Dell';

-- FILTRO WHERE COM MAIS DE UMA CONDIÇÃO
SELECT * FROM 
	clientes
WHERE Qtd_Filhos > 0 AND Sexo = "M";

SELECT * FROM 
	clientes
WHERE Qtd_Filhos > 0 AND Sexo = "M" AND Escolaridade = "Parcial"
ORDER BY Qtd_Filhos;

SELECT * FROM produtos
WHERE Marca_Produto = "Dell" AND Preco_Unit > 1000;

SELECT * FROM produtos
WHERE Marca_Produto = "Dell" OR Preco_Unit > 1000;

-- Quero selecionar todos os produtos da marca dell ou samsung ou altura

SELECT * FROM produtos
WHERE Marca_Produto = "DELL" OR Marca_Produto = "SAMSUNG" OR Marca_Produto = "ALTURA";

-- Quero selecionar todos os produtos da marca dell ou samsung ou altura
-- De uma forma simplificada usando "IN"

SELECT * FROM produtos
WHERE Marca_Produto in ('DELL', 'SAMSUNG', 'ALTURA');

-- USANDO "BETWENN" AO INVÉS DE AND
SELECT * FROM produtos
	WHERE Preco_Unit >= 1000 and Preco_Unit <= 3000;
    
SELECT * FROM produtos
	WHERE Preco_Unit BETWEEN 1000 AND 3000;

-- USANDO O WILDCARD PARA ENCONTRAR UM TEXTO CONTIDO 
SELECT * FROM produtos
	WHERE Nome_Produto like '%Microfone%';

SELECT * FROM produtos
	WHERE Nome_Produto like '%Mic%';

-- TEXTOS QUE COMEÇAM COM "MIC" 
SELECT * FROM produtos
	WHERE Nome_Produto like 'MIC%';
    
-- TEXTOS QUE TERMINAM COM "MIC" 
SELECT * FROM produtos
	WHERE Nome_Produto like '%MIC';

-- VALORES NULOS: NULL
SELECT * FROM clientes
	WHERE Telefone IS NULL;

SELECT * FROM clientes
	WHERE Telefone IS NOT NULL;