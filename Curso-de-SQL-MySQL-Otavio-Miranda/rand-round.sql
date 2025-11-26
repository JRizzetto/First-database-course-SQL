-- Configura um salário aleatório para users

SELECT ROUND (RAND() * 10000, 2); -- Para visualizar o número antes de fazer o update 
 
UPDATE users SET salary = ROUND (RAND() * 10000, 2);

SELECT first_name, last_name, salary FROM users
WHERE salary BETWEEN 1000 AND 1500
ORDER BY salary DESC;