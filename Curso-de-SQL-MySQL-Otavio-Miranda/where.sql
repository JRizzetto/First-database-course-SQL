-- WHERE filtra registros 
-- Operadores de comparação = < <= > >= <> !=
-- Operadores lógicos 

SELECT * FROM users
WHERE id = 8;

SELECT * FROM users
WHERE first_name = "Jefferson";

SELECT * FROM users
WHERE id > 10;

SELECT * FROM users
WHERE 
created_at <= '2025-11-21 19:33:41'
AND first_name = 'Jefferson' 
OR first_name = 'maria'
AND ID < 10;