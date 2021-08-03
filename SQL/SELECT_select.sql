-- https://sqlzoo.net/wiki/SELECT_within_SELECT_Tutorial

-- These are 10 brainteaser questions, based on a 'World' database.

-- 1.
-- List each country name where the population is larger than that of 'Russia'.

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

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


-- 2.
-- Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.

SELECT name
FROM world
WHERE gdp/population > (
SELECT gdp/population FROM world WHERE name = 'United Kingdom' AND continent = 'Europe'
)
AND continent = 'Europe'

-- output: 

-- name
-- Andorra
-- Austria
-- Belgium
-- Denmark
-- Finland
-- France
-- Germany
-- Iceland
-- Ireland
-- Liechtenstein
-- Luxembourg
-- Monaco
-- Netherlands
-- Norway
-- San Marino
-- Sweden
-- Switzerland


-- 3.
-- List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.


SELECT name, continent
FROM world 
WHERE continent IN (
SELECT continent 
FROM world 
WHERE name IN ('Argentina', 'Australia')
)

-- output: 

-- name	continent
-- Argentina	South America
-- Australia	Oceania
-- Bolivia	South America
-- Brazil	South America
-- Chile	South America
-- Colombia	South America
-- Ecuador	South America
-- Fiji	Oceania
-- Guyana	South America
-- Kiribati	Oceania
-- Marshall Islands	Oceania
-- Micronesia, Federated States of	Oceania
-- Nauru	Oceania
-- New Zealand	Oceania
-- Palau	Oceania
-- Papua New Guinea	Oceania
-- Paraguay	South America
-- Peru	South America
-- Saint Vincent and the Grenadines	South America
-- Samoa	Oceania
-- Solomon Islands	Oceania
-- Suriname	South America
-- Tonga	Oceania
-- Tuvalu	Oceania
-- Uruguay	South America
-- Vanuatu	Oceania
-- Venezuela	South America


-- 4.
-- Which country has a population that is more than Canada but less than Poland? Show the name and the population.

SELECT name, population
FROM world
WHERE population < (
SELECT population 
FROM world 
WHERE name = 'Poland'
) AND population > (
SELECT population 
FROM world 
WHERE name = 'Canada'
)

-- output: 

-- name	population
-- Iraq	36004552
-- Sudan	37289406


-- 5.
-- Germany (population 80 million) has the largest population of the countries in Europe. Austria (population 8.5 million) has 11% of the population of Germany.
-- Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.

SELECT name, CONCAT(FLOOR(ROUND(population*100/(
SELECT population
FROM world
WHERE name = 'Germany'), 0)),'%') 
FROM world
WHERE continent = 'Europe'

-- output: 

-- name	
-- Albania	3%
-- Andorra	0%
-- Austria	11%
-- Belarus	12%
-- Belgium	14%
-- Bosnia and Herzegovina	5%
-- Bulgaria	9%
-- Croatia	5%
-- Czech Republic	13%
-- Denmark	7%
-- Estonia	2%
-- Finland	7%
-- France	82%
-- Germany	100%
-- Greece	14%
-- Hungary	12%
-- Iceland	0%
-- Ireland	6%
-- Italy	75%
-- Kazakhstan	21%
-- Latvia	2%
-- Liechtenstein	0%
-- Lithuania	4%
-- Luxembourg	1%
-- Macedonia	3%
-- Malta	1%
-- Moldova	4%
-- Monaco	0%
-- Montenegro	1%
-- Netherlands	21%
-- Norway	6%
-- Poland	48%
-- Portugal	13%
-- Romania	25%
-- San Marino	0%
-- Serbia	9%
-- Slovakia	7%
-- Slovenia	3%
-- Spain	58%
-- Sweden	12%
-- Switzerland	10%
-- Ukraine	53%
-- United Kingdom	79%
-- Vatican City	0%


