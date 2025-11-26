-- Funções de agregação 


SELECT 
MAX(salary) AS Max_salary,
MIN(salary) AS Min_salary,
AVG(salary) AS avg_salary,
SUM(salary) AS sum_salary,
COUNT(salary) AS count_salary
FROM users
WHERE first_name = 'Carly';

SELECT 
u.first_name,
MAX(u.salary) AS Max_salary,
MIN(u.salary) AS Min_salary,
AVG(u.salary) AS avg_salary,
SUM(u.salary) AS sum_salary,
COUNT(u.id) AS total
FROM users u 
LEFT JOIN profiles p 
ON p.user_id = u.id
GROUP BY first_name
ORDER BY total DESC;