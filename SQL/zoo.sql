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


-- 4.
-- Iceland, Switzerland end with land - but are there others?
-- Find the countries that end with land

SELECT name FROM world
  WHERE name LIKE '%LAND'

-- output: 

-- name
-- Finland
-- Iceland
-- Ireland
-- New Zealand
-- Poland
-- Swaziland
-- Switzerland
-- Thailand


-- 5.
-- Columbia starts with a C and ends with ia - there are two more like this.
-- Find the countries that start with C and end with ia

SELECT name FROM world
  WHERE name LIKE 'C%IA'

-- output: 

-- name
-- Cambodia
-- Colombia
-- Croatia


-- 6.
-- Greece has a double e - who has a double o?
-- Find the country that has oo in the name

SELECT name FROM world
  WHERE name LIKE '%OO%'

-- output: 

-- name
-- Cameroon


-- 7.
-- Bahamas has three a - who else?
-- Find the countries that have three or more a in the name

SELECT name FROM world
  WHERE name LIKE '%A%A%A%'

-- output: 

-- name
-- Afghanistan
-- Albania
-- Antigua and Barbuda
-- Australia
-- Azerbaijan
-- Bahamas
-- Bosnia and Herzegovina
-- Canada
-- Central African Republic
-- Equatorial Guinea
-- Guatemala
-- Jamaica
-- Kazakhstan
-- Madagascar
-- Malaysia
-- Marshall Islands
-- Mauritania
-- Micronesia, Federated States of
-- Nicaragua
-- Panama
-- Papua New Guinea
-- Paraguay
-- Saint Vincent and the Grenadines
-- Saudi Arabia
-- Tanzania
-- Trinidad and Tobago
-- United Arab Emirates