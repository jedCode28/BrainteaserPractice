-- https://sqlzoo.net/wiki/SUM_and_COUNT

-- These are 8 SQL excercises focusing on aggregate functions using a 'world' database. 

-- 1.
-- Show the total population of the world.

SELECT SUM(population)
FROM world

-- output: 

-- 7118632738


-- 2.
-- List all the continents - just once each.

SELECT DISTINCT(continent) 
FROM world

-- output: 

-- continent
-- Africa
-- Asia
-- Caribbean
-- Eurasia
-- Europe
-- North America
-- Oceania
-- South America


-- 3.
-- Give the total GDP of Africa

SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa'

-- output: 

-- 1811788000000


-- 4.
-- How many countries have an area of at least 1000000

SELECT COUNT(name)
FROM world
WHERE area > 1000000

-- output: 

-- 28


