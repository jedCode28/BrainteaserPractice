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


-- 8.
-- India and Angola have an n as the second character. You can use the underscore as a single character wildcard.
-- Find the countries that have "t" as the second character.

SELECT name FROM world
 WHERE name LIKE '_T%'
ORDER BY name

-- output: 

-- name
-- Ethiopia
-- Italy


-- 9.
-- Lesotho and Moldova both have two o characters separated by two other characters.
-- Find the countries that have two "o" characters separated by two others.

SELECT name FROM world
 WHERE name LIKE '%O__O%'

-- output: 

-- name
-- Congo, Democratic Republic of
-- Congo, Republic of
-- Lesotho
-- Moldova
-- Mongolia
-- Morocco
-- Sao Tomé and Príncipe


-- 10.
-- Cuba and Togo have four characters names.
-- Find the countries that have exactly four characters.

SELECT name FROM world
 WHERE name LIKE '____'

--  output: 

--  name
-- Chad
-- Cuba
-- Fiji
-- Iran
-- Iraq
-- Laos
-- Mali
-- Oman
-- Peru
-- Togo


-- 11.
-- The capital of Luxembourg is Luxembourg. Show all the countries where the capital is the same as the name of the country
-- Find the country where the name is the capital city.

SELECT name
  FROM world
 WHERE name  = capital

-- output:


-- name
-- Djibouti
-- Luxembourg
-- San Marino
-- Singapore


-- 12.
-- The capital of Mexico is Mexico City. Show all the countries where the capital has the country together with the word "City".
-- Find the country where the capital is the country plus "City".


SELECT name
  FROM world
 WHERE capital LIKE concat(name, ' City')

--  output: 

--  name
-- Guatemala
-- Kuwait
-- Mexico
-- Panama


-- 13.
-- Find the capital and the name where the capital includes the name of the country.

SELECT  capital, name
FROM world
WHERE capital LIKE concat('%', name, '%')

-- output: 

-- capital	name
-- Andorra la Vella	Andorra
-- Djibouti	Djibouti
-- Guatemala City	Guatemala
-- Kuwait City	Kuwait
-- Luxembourg	Luxembourg
-- Mexico City	Mexico
-- Monaco-Ville	Monaco
-- Panama City	Panama
-- San Marino	San Marino
-- Singapore	Singapore
