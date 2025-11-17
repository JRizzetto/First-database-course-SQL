-- Você pode contar registros em uma tabela:
SELECT 
    COUNT(*) 
AS 
    record_count
FROM 
    station_data;

-- Para filtrar e contar com base em critérios específicos:
SELECT
    COUNT(*)
AS 
    record_count
FROM 
    station_data
WHERE 
    tornado = 1;


--  Para classificar dados do ano mais recente:
SELECT 
    year, month, COUNT(*)
AS 
    Record_count 
FROM 
    station_data 
WHERE 
    tornado = 1
GROUP BY 
    year, month 
ORDER BY 
    year DESC, month;


-- Além de COUNT, outras funções de agregação incluem SUM, MIN, MAX e AVG.
SELECT 
    COUNT(snow_depth)
AS 
    recorded_snow_depth_count
from station_data;

-- A cláusula HAVING é usada para filtrar valores agregados após o cálculo, ao contrário da cláusula WHERE:
SELECT 
    year, SUM(precipitation) 
AS 
    total_precipitation
FROM 
    STATION_DATA 
GROUP BY 
    YEAR 
HAVING total_precipitation > 30;

-- A palavra-chave DISTINCT ajuda a eliminar duplicatas dos resultados da consulta:
SELECT 
    DISTINCT station_number 
FROM station_data;

-- Para contar registros em uma tabela, execute:
SELECT 
    COUNT(*)
AS contagem_registros
FROM 
    station_data;

-- específicos, como contar ocorrências de tornados:
SELECT 
    COUNT(*) AS contagem_registros
FROM
    STATION_DATA
WHERE 
    tornado = 1;

-- Para categorizar as contagens por ano, use:
SELECT 
    ano, COUNT(*) AS contagem_registros
FROM 
    STATION_DATA
WHERE tornado = 1
GROUP BY ANO;

-- Para contagens por ano e mês, ajuste a consulta:
SELECT
    year, month count(*) AS contagem_registros
FROM 
    STATION_DATA 
WHERE 
    tornado = 1
GROUP BY
    year, month;


// Você pode contar registros em uma tabela:
SELECT COUNT(*) AS record_count FROM station_data;
SELECT COUNT(*) AS record_count FROM STATION_DATA WHERE TORNADO = 1;

// Para classificar dados do ano mais recente:
SELECT YEAR, MONTH, COUNT(*) AS RECORD_COUNT 
FROM STATION_DATA
WHERE TORNADO = 1
GROUP BY YEAR, MONTH
ORDER BY YEAR DESC, MONTH

// A função COUNT pode também contar valores não nulos quando usada com uma coluna específica:
SELECT COUNT(SNOW_DEPTH) AS RECORD_SNOW_DEPTH_COUNT FROM STATION_DATA;

// A cláusula HAVING é usada para filtrar valores agregados após o cálculo, ao contrário da cláusula WHERE:
SELECT YEAR, SUM(PRECIPITATION) AS TOTAL_PRECIPITATION
FROM STATION_DATA
GROUP BY YEAR
HAVING TOTAL_PRECIPITATION > 30;

// A palavra-chave DISTINCT ajuda a eliminar duplicatas dos resultados da consulta:
SELECT DISTINCT STATION_NUMBER FROM STATION_DATA;

// Para contar registros em uma tabela, execute:
SELECT COUNT(*) AS CONTAGEM_REGISTROS FROM STATION_DATA;

// Utilize condições com COUNT() para filtrar dados específicos, como contar ocorrências de tornados:
SELECT COUNT(*) AS CONTAGEM_REGISTROS FROM STATION_DATA WHERE TORNADO = 1;

// Para categorizar as contagens por ano, use:
SELECT ANO, COUNT(*) AS CONTAGEM_REGISTROS FROM STATION_DATA WHERE TORNADO = 1 GROUP BY ANO;

// Para categorizar as contagens por ano, use:
SELECT YEAR, COUNT(*) AS CONTAGEM_REGISTROS FROM STATION_DATA WHERE TORNADO = 1 GROUP BY YEAR;

// Para contagens por ano e mês, ajuste a consulta:
SELECT YEAR, MONTH, COUNT(*) AS CONTAGEM_REGISTROS FROM STATION_DATA WHERE TORNADO = 1 GROUP BY YEAR, MONTH;
