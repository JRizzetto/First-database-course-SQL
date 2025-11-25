-- UPDATE Atuazliza registros 

UPDATE users SET 
first_name = 'Luiz', 
last_name = 'Miranda' 
WHERE id = 19;

SELECT * FROM users WHERE id = 19;

SELECT * FROM users WHERE id BETWEEN 19 AND 21;

UPDATE users SET 
first_name = 'Jefferson', 
last_name = 'Rizzetto' 
WHERE id BETWEEN 19 AND 21;