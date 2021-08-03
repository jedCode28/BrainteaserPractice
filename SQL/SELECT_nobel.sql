-- https://sqlzoo.net/wiki/SELECT_from_Nobel_Tutorial

-- These are 14 brainteaser questions, based on a 'Nobel Prize Winners' database. 

-- 1.
-- Change the query shown so that it displays Nobel prizes for 1950.

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

--  output: 

--  yr	subject	winner
-- 1950	Chemistry	Kurt Alder
-- 1950	Chemistry	Otto Diels
-- 1950	Literature	Bertrand Russell
-- 1950	Medicine	Edward C. Kendall
-- 1950	Medicine	Philip S. Hench
-- 1950	Medicine	Tadeus Reichstein
-- 1950	Peace	Ralph Bunche
-- 1950	Physics	Cecil Powell


-- 2.
-- Show who won the 1962 prize for Literature.

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

-- output: 

-- winner
-- John Steinbeck


-- 3.
-- Show the year and subject that won 'Albert Einstein' his prize.

SELECT yr, subject
 FROM nobel
 WHERE winner = 'Albert Einstein'

-- output: 

--  yr	subject
-- 1921	Physics


-- 4.
-- Give the name of the 'Peace' winners since the year 2000, including 2000.

SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr > 1999

-- output: 

-- winner
-- Kim Dae-jung
-- Kofi Annan
-- United Nations
-- Jimmy Carter
-- Shirin Ebadi
-- Wangari Maathai
-- International Atomic Energy Agency
-- Mohamed ElBaradei
-- Grameen Bank
-- Muhammad Yunus
-- Al Gore
-- Intergovernmental Panel on Climate Change
-- Martti Ahtisaari
-- Barack Obama
-- Liu Xiaobo
-- Ellen Johnson Sirleaf
-- Leymah Gbowee
-- Tawakel Karman
-- European Union
-- Kailash Satyarthi
-- Malala Yousafzai
-- Tunisian National Dialogue Quartet
-- Juan Manuel Santos
-- International Campaign to Abolish Nuclear Weapons


-- 5.
-- Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.

SELECT yr, subject, winner 
FROM nobel
WHERE subject = 'Literature' AND 1980 <= yr AND yr <= 1989 

-- output: 

-- yr	subject	winner
-- 1980	Literature	Czeslaw Milosz
-- 1981	Literature	Elias Canetti
-- 1982	Literature	Gabriel García Márquez
-- 1983	Literature	William Golding
-- 1984	Literature	Jaroslav Seifert
-- 1985	Literature	Claude Simon
-- 1986	Literature	Wole Soyinka
-- 1987	Literature	Joseph Brodsky
-- 1988	Literature	Naguib Mahfouz
-- 1989	Literature	Camilo José Cela


-- 6.
-- Show all details of the presidential winners:

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')

output: 

-- yr	subject	winner
-- 1906	Peace	Theodore Roosevelt
-- 1919	Peace	Woodrow Wilson
-- 2002	Peace	Jimmy Carter
-- 2009	Peace	Barack Obama