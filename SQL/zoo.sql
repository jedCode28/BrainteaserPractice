-- https://sqlzoo.net/wiki/SELECT_names

-- These are 15 SQL brainteaser problems, based on a database 'WORLD' with names and information of various countries.

-- 1. The % is a wild-card it can match any characters
--     Find the country that start with Y

SELECT name FROM world
WHERE name LIKE 'Y%'

-- output: 

-- name
-- Yemen



