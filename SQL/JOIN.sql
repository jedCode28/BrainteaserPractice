-- https://sqlzoo.net/wiki/The_JOIN_operation

-- These are 13 SQL brainteaser questions, based on a sports database of soccer stuff.


-- 1.
-- Show the matchid and player name for all goals scored by Germany. 

SELECT matchid, player
FROM goal 
WHERE teamid = 'GER'

-- output: 

-- matchid	player
-- 1008	Mario Gómez
-- 1010	Mario Gómez
-- 1010	Mario Gómez
-- 1012	Lukas Podolski
-- 1012	Lars Bender
-- 1026	Philipp Lahm
-- 1026	Sami Khedira
-- 1026	Miroslav Klose
-- 1026	Marco Reus
-- 1030	Mesut Özil


-- 2.
-- From the previous query you can see that Lars Bender's scored a goal in game 1012. 
-- Now we want to know what teams were playing in that match.
-- Notice in the that the column matchid in the goal table corresponds to the id column in the game table. 
-- We can look up information about game 1012 by finding that row in the game table.
-- Show id, stadium, team1, team2 for just game 1012

SELECT id, stadium, team1, team2
FROM game
WHERE id = 1012

-- output: 

-- id	stadium	team1	team2
-- 1012	Arena Lviv	DEN	GER


-- 3.
-- Show the player, teamid, stadium and mdate for every German goal.

SELECT player, teamid, stadium, mdate
FROM game JOIN goal ON (id=matchid)
WHERE teamid = 'GER'

-- output: 

-- player	teamid	stadium	mdate
-- Mario Gómez	GER	Arena Lviv	9 June 2012
-- Mario Gómez	GER	Metalist Stadium	13 June 2012
-- Mario Gómez	GER	Metalist Stadium	13 June 2012
-- Lukas Podolski	GER	Arena Lviv	17 June 2012
-- Lars Bender	GER	Arena Lviv	17 June 2012
-- Philipp Lahm	GER	PGE Arena Gdansk	22 June 2012
-- Sami Khedira	GER	PGE Arena Gdansk	22 June 2012
-- Miroslav Klose	GER	PGE Arena Gdansk	22 June 2012
-- Marco Reus	GER	PGE Arena Gdansk	22 June 2012
-- Mesut Özil	GER	National Stadium, Warsaw	28 June 2012


-- 4.
-- Use the same JOIN as in the previous question.
-- Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%'

SELECT team1, team2, player
FROM game JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%'

-- output: 

-- team1	team2	player
-- GER	POR	Mario Gómez
-- NED	GER	Mario Gómez
-- NED	GER	Mario Gómez
-- IRL	CRO	Mario Mandžukic
-- IRL	CRO	Mario Mandžukic
-- ITA	CRO	Mario Mandžukic
-- ITA	IRL	Mario Balotelli
-- GER	ITA	Mario Balotelli
-- GER	ITA	Mario Balotelli


-- 5.
-- The table eteam gives details of every national team including the coach. 
-- You can JOIN goal to eteam.
-- Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10

SELECT player, teamid, coach, gtime
FROM goal JOIN eteam ON (id=teamid)
WHERE gtime<=10

-- output: 

-- player	teamid	coach	gtime
-- Petr Jirácek	CZE	Michal Bílek	3
-- Václav Pilar	CZE	Michal Bílek	6
-- Mario Mandžukic	CRO	Slaven Bilic	3
-- Fernando Torres	ESP	Vicente del Bosque	4


-- 6.
-- JOIN game with eteam 
-- List the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.

SELECT mdate, teamname
FROM game JOIN eteam ON (team1=eteam.id)
WHERE coach LIKE 'Fernando Santos'

-- output: 

-- mdate	teamname
-- 12 June 2012	Greece
-- 16 June 2012	Greece


-- 7.
-- List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'

SELECT player
FROM game JOIN goal ON (id=matchid)
WHERE stadium = 'National Stadium, Warsaw'

-- output: 

-- player
-- Robert Lewandowski
-- Dimitris Salpingidis
-- Alan Dzagoev
-- Jakub Blaszczykowski
-- Giorgos Karagounis
-- Cristiano Ronaldo
-- Mario Balotelli
-- Mario Balotelli
-- Mesut Özil


