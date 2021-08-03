-- https://sqlzoo.net/wiki/SELECT_within_SELECT_Tutorial

-- These are 10 brainteaser questions, based on a 'World' database, focusing on SELECT within SELECT SQL statements.

-- 1.
-- List each country name where the population is larger than that of 'Russia'.

SELECT name 
FROM world
  WHERE population > 146000000

-- output: 

-- name
-- Bangladesh
-- Brazil
-- China
-- India
-- Indonesia
-- Nigeria
-- Pakistan
-- United States


