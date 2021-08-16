-- https://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial

-- These are 13 SQL excercises that query from a 'World' database, focusing on the SELECT method.

-- 1.
-- Observe the result of running this SQL command to show the name, continent and population of all countries.

SELECT name, continent, population FROM world

-- output: 

-- name	continent	population
-- Afghanistan	Asia	25500100
-- Albania	Europe	2821977
-- Algeria	Africa	38700000
-- Andorra	Europe	76098
-- Angola	Africa	19183590
-- Antigua and Barbuda	Caribbean	86295
-- Argentina	South America	42669500
-- Armenia	Eurasia	3017400
-- Australia	Oceania	23545500
-- Austria	Europe	8504850
-- Azerbaijan	Asia	9477100
-- Bahamas	Caribbean	351461
-- Bahrain	Asia	1234571
-- Bangladesh	Asia	156557000
-- Barbados	Caribbean	285000
-- Belarus	Europe	9467000
-- Belgium	Europe	11198638
-- Belize	North America	349728
-- Benin	Africa	9988068
-- Bhutan	Asia	749090
-- Bolivia	South America	10027254
-- Bosnia and Herzegovina	Europe	3791622
-- Botswana	Africa	2024904
-- Brazil	South America	202794000
-- Brunei	Asia	393162
-- Bulgaria	Europe	7245677
-- Burkina Faso	Africa	17322796
-- Burundi	Africa	9420248
-- Cambodia	Asia	15184116
-- Cameroon	Africa	20386799
-- Canada	North America	35427524
-- Cape Verde	Africa	491875
-- Central African Republic	Africa	4709000
-- Chad	Africa	13211000
-- Chile	South America	17773000
-- China	Asia	1365370000
-- Colombia	South America	47662000
-- Comoros	Africa	743798
-- Congo, Democratic Republic of	Africa	69360000
-- Congo, Republic of	Africa	4559000
-- Costa Rica	North America	4667096
-- Côte d'Ivoire	Africa	23919000
-- Croatia	Europe	4290612
-- Cuba	Caribbean	11167325
-- Cyprus	Asia	865878
-- Czech Republic	Europe	10517400
-- Denmark	Europe	5634437
-- Djibouti	Africa	886000
-- Dominica	Caribbean	71293
-- Dominican Republic	Caribbean	9445281
-- Results truncated. Only the first 50 rows have been shown.


-- 2.
-- How to use WHERE to filter records. 
-- Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, 
-- there are eight zeros.

SELECT name
  FROM world
 WHERE population > 200000000

--  output: 

--  name
-- Brazil
-- China
-- India
-- Indonesia
-- United States


-- 3.
-- Give the name and the per capita GDP for those countries with a population of at least 200 million.

SELECT name, (gdp/population) 
FROM world
WHERE population > 200000000

-- output: 

-- name	
-- Brazil	11115.264751422625
-- China	6121.710598592322
-- India	1504.793124478397
-- Indonesia	3482.020488188676
-- United States	51032.29454636844


