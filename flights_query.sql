--Select all records from the airports table

SELECT *
FROM airports;

--Select all records from the airports table in the nycflights database
SELECT faa, name, ROUND(lat, 2) as latitude, ROUND(lon,2) as longitude
FROM airports;

--Select records temperature from weather and convert to celsius. Rename column

SELECT ROUND((temp - 32) * 5/9, 2) as temp_celsius
FROM weather;

-- Retrieve number of seats from planes table, concatinate the phrase into a sentence, rename column

SELECT CONCAT('This plane seats ', seats, '.') AS plane_seats
FROM planes;

-- Create concatinated formatted string

SELECT CONCAT('This ' , year, ' ', INITCAP(manufacturer), ' ', model, ' seats ', seats, '.') AS model_seats
FROM planes;