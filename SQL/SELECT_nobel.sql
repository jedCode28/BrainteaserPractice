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

-- output: 

-- yr	subject	winner
-- 1906	Peace	Theodore Roosevelt
-- 1919	Peace	Woodrow Wilson
-- 2002	Peace	Jimmy Carter
-- 2009	Peace	Barack Obama


-- 7.
-- Show the winners with first name John

SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

-- output: 

-- winner
-- John Macleod
-- John Galsworthy
-- John H. Northrop
-- John R. Mott
-- John Cockcroft
-- John F. Enders
-- John Bardeen
-- John C. Kendrew
-- John Steinbeck
-- John R. Hicks
-- John Bardeen
-- John Cornforth
-- John H. van Vleck
-- John R. Vane
-- John C. Polanyi
-- John C. Harsanyi
-- John F. Nash Jr.
-- John E. Walker
-- John Pople
-- John Hume
-- John B. Fenn
-- John E. Sulston
-- John L. Hall
-- John C. Mather
-- John B. Gurdon
-- John O'Keefe
-- John M. Kosterlitz


-- 8.
-- Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980 AND subject = 'Physics' OR yr = 1984 AND subject = 'Chemistry'

-- output: 

-- yr	subject	winner
-- 1980	Physics	James Cronin
-- 1980	Physics	Val Fitch
-- 1984	Chemistry	Bruce Merrifield


-- 9.
-- Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine

SELECT * 
FROM nobel
WHERE yr = 1980 AND NOT nobel.subject = 'Chemistry' AND NOT nobel.subject = 'Medicine' 

-- output: 

-- yr	subject	winner
-- 1980	Economics	Lawrence R. Klein
-- 1980	Literature	Czeslaw Milosz
-- 1980	Peace	Adolfo Pérez Esquivel
-- 1980	Physics	James Cronin
-- 1980	Physics	Val Fitch


-- 10.
-- Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910)
-- together with winners of a 'Literature' prize in a later year (after 2004, including 2004)

SELECT *
FROM nobel
WHERE subject = 'Medicine' AND yr < 1910 OR subject = 'Literature' AND yr >= 2004

-- output: 

-- yr	subject	winner
-- 1901	Medicine	Emil von Behring
-- 1902	Medicine	Ronald Ross
-- 1903	Medicine	Niels Ryberg Finsen
-- 1904	Medicine	Ivan Pavlov
-- 1905	Medicine	Robert Koch
-- 1906	Medicine	Camillo Golgi
-- 1906	Medicine	Santiago Ramón y Cajal
-- 1907	Medicine	Alphonse Laveran
-- 1908	Medicine	Ilya Mechnikov
-- 1908	Medicine	Paul Ehrlich
-- 1909	Medicine	Theodor Kocher
-- 2004	Literature	Elfriede Jelinek
-- 2005	Literature	Harold Pinter
-- 2006	Literature	Orhan Pamuk
-- 2007	Literature	Doris Lessing
-- 2008	Literature	Jean-Marie Gustave Le Clézio
-- 2009	Literature	Herta Müller
-- 2010	Literature	Mario Vargas Llosa
-- 2011	Literature	Tomas Tranströmer
-- 2012	Literature	Mo Yan
-- 2013	Literature	Alice Munro
-- 2014	Literature	Patrick Modiano
-- 2015	Literature	Svetlana Alexievich
-- 2016	Literature	Bob Dylan
-- 2017	Literature	Kazuo Ishiguro


-- 11.
-- Find all details of the prize won by PETER GRÜNBERG

SELECT *
FROM nobel
WHERE winner LIKE 'Peter Gr%'

-- output: 

-- yr	subject	winner
-- 2007	Physics	Peter Grünberg


-- 12.
-- Find all details of the prize won by EUGENE O'NEILL

SELECT *
FROM nobel
WHERE winner LIKE 'Eugene %Neill'

-- output: 

-- yr	subject	winner
-- 1936	Literature	Eugene O'Neill


-- 13.
-- Knights in order
-- List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%' ORDER BY yr DESC,winner

-- output: 

-- winner	yr	subject
-- Sir Martin J. Evans	2007	Medicine
-- Sir Peter Mansfield	2003	Medicine
-- Sir Paul Nurse	2001	Medicine
-- Sir Harold Kroto	1996	Chemistry
-- Sir James W. Black	1988	Medicine
-- Sir Arthur Lewis	1979	Economics
-- Sir Nevill F. Mott	1977	Physics
-- Sir Bernard Katz	1970	Medicine
-- Sir John Eccles	1963	Medicine
-- Sir Frank Macfarlane Burnet	1960	Medicine
-- Sir Cyril Hinshelwood	1956	Chemistry
-- Sir Robert Robinson	1947	Chemistry
-- Sir Alexander Fleming	1945	Medicine
-- Sir Howard Florey	1945	Medicine
-- Sir Henry Dale	1936	Medicine
-- Sir Norman Angell	1933	Peace
-- Sir Charles Sherrington	1932	Medicine
-- Sir Venkata Raman	1930	Physics
-- Sir Frederick Hopkins	1929	Medicine
-- Sir Austen Chamberlain	1925	Peace
-- Sir William Ramsay	1904	Chemistry


-- 14.
-- The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.
-- Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY 
 CASE WHEN subject IN ('Physics', 'Chemistry') THEN 1 ELSE 0 END, 
 subject,winner

-- output: 

-- winner	subject
-- Richard Stone	Economics
-- Jaroslav Seifert	Literature
-- César Milstein	Medicine
-- Georges J.F. Köhler	Medicine
-- Niels K. Jerne	Medicine
-- Desmond Tutu	Peace
-- Bruce Merrifield	Chemistry
-- Carlo Rubbia	Physics
-- Simon van der Meer	Physics