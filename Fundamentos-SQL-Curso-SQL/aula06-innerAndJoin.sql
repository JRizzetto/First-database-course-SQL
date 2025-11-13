-- O INNER JOIN cai nos perdmitir relacionas duas tabelas (Tabela A e Tabela B) e criar uma nova tabela(Tabela C) que é a junção das duas. A tabela resultante desse JOIN será apenas as linhas que são a interseção entre a tabela B e a Tabela B.

SELECT
    Tabela_A.coluna1,
    Tabela_A.coluna2,
    Tabela_A.coluna3,
    Tabela_B.coluna4,
FROM 
    Tabela_A 
INNER JOIN Tabela_B
    ON Tabela_A.id_chave_estrangeira = Tabela_B.id_chave_primária

-- 1 - fAÇA UMA CONSULTA QUE TENHA COMO RESULTADO TODAS AS COLUNAS DA TABELA DE PEDIDOS E AS COLUNAS LOJA, GERENTE E TELEFONE.

SELECT
	pedidos.*,
	lojas.loja,
    lojas.Gerente,
    lojas.Telefone
FROM 
	lojas
INNER JOIN pedidos
	ON pedidos.ID_Loja = lojas.ID_Loja;