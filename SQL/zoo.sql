-- https://sqlzoo.net/wiki/SELECT_names

-- These are 15 SQL brainteaser problems, based on a database 'WORLD' with names and information of various countries.

-- 1. 
    -- The % is a wild-card it can match any characters
    -- Find the country that start with Y

SELECT name FROM world
WHERE name LIKE 'Y%'

-- output: 

-- name
-- Yemen


-- 2.
-- Find the countries that end with y

SELECT name FROM world
  WHERE name LIKE '%Y'

-- output: 

-- name
-- Germany
-- Hungary
-- Italy
-- Norway
-- Paraguay
-- Turkey
-- Uruguay
-- Vatican City


-- 3.
-- Luxembourg has an x - so does one other country. List them both.
-- Find the countries that contain the letter x

SELECT name FROM world
  WHERE name LIKE '%X%'

-- output: 

-- name
-- Luxembourg
-- Mexico