-- Pegar um range entre dois periodos
SELECT * FROM users
WHERE 
created_at < '2021-04-22 06:01:30'
AND created_at > '2020-10-04 03:36:24';

-- Pegar um range entre dois periodos usando BETWEEN
SELECT * FROM users
WHERE 
created_at BETWEEN '2020-10-04 03:36:24' AND '2021-04-22 06:01:30'

SELECT * FROM users
WHERE 
id BETWEEN 90 AND 100;

-- Pegar um range entre dois periodos usando IN
SELECT * FROM users
WHERE id IN(60, 70, 80)
AND first_name in('Hilda', 'Emerson');

-- LIKE serve para buscar um valor parecido com o que eu escrever para busca 
SELECT * FROM users
WHERE first_name LIKE '%a';

SELECT * FROM users
WHERE first_name LIKE '%o';

SELECT * FROM users
WHERE first_name LIKE 'he%';

SELECT * FROM users
WHERE first_name LIKE 'he%a';

SELECT * FROM users
WHERE first_name LIKE '%mo%';

SELECT * FROM users
WHERE first_name LIKE '%a%b%';

SELECT * FROM users
WHERE first_name LIKE 'j_cob';

SELECT * FROM users
WHERE first_name LIKE '____b';

SELECT * FROM users
WHERE first_name LIKE '_____';
