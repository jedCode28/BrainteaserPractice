-- https://sqlzoo.net/wiki/SELECT_basics

-- These are 3 SQL brainteaser problems, based on a database 'WORLD' with names and information of various countries.

-- 1.
-- The example uses a WHERE clause to show the population of 'France'. 
-- Note that strings (pieces of text that are data) should be in 'single quotes';
-- Modify it to show the population of Germany

SELECT population FROM world
  WHERE name = 'Germany'

-- output: 

-- population
-- 80716000


-- 2.
-- Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Denmark', 'Norway');

-- output: 

-- name	population
-- Denmark	5634437
-- Norway	5124383
-- Sweden	9675885


-- 3.
-- Show the country and the area for countries with an area between 200,000 and 250,000.

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

-- output: 

-- name	area
-- Belarus	207600
-- Ghana	238533
-- Guinea	245857
-- Guyana	214969
-- Laos	236800
-- Romania	238391
-- Uganda	241550
-- United Kingdom	242900