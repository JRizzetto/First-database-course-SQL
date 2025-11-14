-- BLOCO 04: CRIAÇÃO DE BANCOS DE DADOS
-- ANTES DE CRIAR A TABELA PRECISAMOS CRIAR UM BANCO DE DADOS
CREATE DATABASE cursosql;
use cursosql; -- Entrar no banco de dados para usar

CREATE TABLE alunos(
	id_aluno int,
    nome varchar(100),
    nota decimal(10, 2),
    curso varchar(100)
);

SELECT * FROM alunos;

-- INSERIR DADOS NA TABELA
insert into alunos(id_aluno, nome, nota, curso)
values
	(1, 'Ana', 8.5, 'SQL'),
    (2, 'Bruno', 5, 'Python'),
    (3, 'Carla', 9, 'Python');

-- CADASTRAR DADOS COM INFORMAÇÕA NULA 
insert into alunos(id_aluno, nota, curso)
VALUES
	(4, 5, 'SQL');
    
SELECT * FROM alunos;

-- GARANTIR QUE AS COLUNAS NÃO ACEITEM VALORES NULOS
-- CONSTRAINTS: NOT NULL, UNIQUE, CHECK, PRIMARY KEY, FOREIGN KEY
CREATE TABLE alunos(
	id_aluno int NOT NULL,
    nome varchar(100) NOT NULL,
    nota decimal(10, 2) NOT NULL,
    curso varchar(100) NOT NULL
);

SELECT * FROM alunos;

-- INSERIR DADOS NA TABELA
insert into alunos(id_aluno, nome, nota, curso)
values
	(1, 'Ana', 8.5, 'SQL'),
    (2, 'Bruno', 5, 'Python'),
    (3, 'Carla', 9, 'Python');
    
insert into alunos(id_aluno, nome, nota, curso)
VALUES
	(4, 'Diego',5, 'SQL');
    
SELECT * FROM alunos;

-- ATUALIZANDO VALORES NA TABELA
UPDATE alunos
SET nota = 8
WHERE id_aluno = 4;



