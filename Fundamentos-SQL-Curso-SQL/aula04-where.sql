-- Filtros no SQL
-- filtrar uma coluna de numeros 
SELECT Nome_Produto, Preco_Unit FROM produtos
	WHERE Preco_Unit > 1800;

SELECT * 
    FROM produtos 
    WHERE Preco_Unit > 1800;

SELECT * 
    FROM produtos 
    WHERE Preco_Unit = 3100;

SELECT *
	FROM produtos
    WHERE Marca_Produto = "DELL";

SELECT *
	FROM clientes
    WHERE Estado_Civil = "S" AND Sexo = "M";

SELECT * 
	FROM produtos 
    WHERE Marca_Produto = "DELL" OR Marca_Produto = "SAMSUNG";

