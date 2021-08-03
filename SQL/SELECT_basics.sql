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


