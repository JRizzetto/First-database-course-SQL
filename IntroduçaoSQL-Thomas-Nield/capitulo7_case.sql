-- Para categorizar a velocidade do vento em níveis de severidade:
SELECT 
    report_code, year, month, day, wind_speed,
CASE 
    WHEN wind_speed >= 40 THEN 'ALTO'
    WHEN wind_speed >= 30 THEN 'MODERADO'
    ELSE 'BAIX0'
END AS WIND_SEVERITY
FROM station_data;

-- Agrupar instruções CASE leva a transformações de dados poderosas. Por exemplo, agrupar por ano e severidade do vento permite contagens agregadas:
SELECT 
    year, 
CASE 
    WHEN wind_speed >= 40 THEN 'ALTO'
    WHEN wind_speed >= 30 THEN 'MODERADO'
    ELSE 'BAIXO'
END AS wind_severity, 
COUNT(*) AS record_count 
FROM station_data
GROUP BY 1, 2;

-- somar a precipitação para condições de tornado e não tornado pode ser realizado através de:
SELECT 
    year, month,
SUM(CASE WHEN tornado = 1 THEN PRECIPITATION ELSE 0 END) AS tornado_precipitation,
SUM(CASE WHEN TORNADO = 0 THEN PRECIPITATION ELSE 0 END) AS non_tornado_precipitation
FROM 
    station_data
GROUP BY year, month;

-- Aqui está um exemplo para calcular a média das temperaturas com base nas condições de chuva/granizo após 2000:
SELECT 
    month,
AVG(CASE WHEN rain OR hail THEN temperature ELSE NULL END) AS avg_precipitation_temp,
AVG(CASE WHEN NOT (rain OR hail) THEN temperature ELSE NULL END) AS avg_non_precipitation_temp
FROM 
    station_data
WHERE year > 2000
GROUP BY MONTH;


// Para categorizar a velocidade do vento em níveis de severidade
SELECT REPORT_CODE, YEAR, MONTH, DAY, WIND_SPEED, 
    CASE
        WHEN WIND_SPEED >= 40 THEN 'ALTO'
        WHEN WIND_SPEED >= 30 THEN 'MODERADO'
        ELSE 'BAIXO'
    END AS WIND_SEVERITY
    FROM STATION_DATA GROUP BY WIND_SPEED;

// Agrupar por ano e severidade do vento permite contagens agregadas:
SELECT YEAR, 
    CASE
        WHEN WIND_SPEED >= 40 THEN 'ALTO'
        WHEN WIND_SPEED >= 30 THEN 'MODERADO'
        ELSE 'BAIXO'
    END AS WIND_SEVEIRY,
    COUNT(*) AS RECORD_COUNT
FROM STATION_DATA 
GROUP BY 1, 2;
     
// somar a precipitação para condições de tornado e não tornado pode ser realizado através de:
SELECT YEAR, MONTH,
    SUM(CASE WHEN TORNADO = 1 THEN PRECIPITATION ELSE 0 END)
    AS TORNADO_PRECIPITATION,
    SUM(CASE WHEN TORNADO = 0 THEN PRECIPITATION ELSE 0 END)
    AS NON_TORNADO_PRECIPITATION
FROM STATION_DATA
GROUP BY YEAR, MONTH;

// calcular a média das temperaturas com base nas condições de chuva/granizo após 2000:
SELECT MONTH,
    AVG(CASE WHEN RAIN OR HAIL THEN TEMPERATURE ELSE NULL END) AS AVG_PRECITIPATION_TEMP,
    AVG(CASE WHEN NOT (RAIN OR HAIL) THEN TEMPERATURE ELSE NULL END) AS 
    AVG_NON_PRECIPITATION_TEMP
FROM STATION_DATA WHERE YEAR > 2000
GROUP BY MONTH;
