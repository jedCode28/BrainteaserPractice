https://sqlzoo.net/wiki/More_JOIN_operations

-- These are 15 SQL brainteaser questions, based on a movie database, using JOIN statements.

-- 1.
-- List the films where the yr is 1962 [Show id, title]

SELECT id, title
FROM movie
WHERE yr=1962

-- output: 

-- id	title
-- 10212	A Kind of Loving
-- 10329	A Symposium on Popular Songs
-- 10347	A Very Private Affair (Vie PrivÃ©e)
-- 10648	An Autumn Afternoon
-- 10868	Atraco a las tres
-- 11006	Barabbas
-- 11053	Battle Beyond the Sun (ÐÐµÐ±Ð¾ Ð·Ð¾Ð²ÐµÑ‚)
-- 11199	Big and Little Wong Tin Bar
-- 11230	Billy Budd
-- 11234	Billy Rose's Jumbo
-- 11242	Birdman of Alcatraz
-- 11373	Boccaccio '70
-- 11391	Bon Voyage!
-- 11439	Boys' Night Out
-- 11692	Cape Fear
-- 11735	Carnival of Souls
-- 11753	Carry On Cruising
-- 12368	David and Lisa
-- 12384	Days of Wine and Roses
-- 12710	Dr. No
-- 12817	L'Eclisse
-- 12967	Tutti a casa
-- 12992	Experiment in Terror
-- 13010	Eyes Without a Face
-- 13484	Gay Purr-ee
-- 13534	Gigot
-- 13641	Gorath
-- 13727	Gypsy
-- 13741	Half Ticket
-- 13798	Harakiri
-- 14317	In Search of the Castaways
-- 14454	It's Only Money
-- 14550	Jigsaw
-- 14718	Kid Galahad
-- 14860	La commare secca
-- 14873	La notte
-- 14972	Lawrence of Arabia
-- 15088	Life for Ruth
-- 15173	Lolita
-- 15182	Long Day's Journey into Night
-- 15247	Love at Twenty
-- 15297	Lycanthropus
-- 15397	Mamma Roma
-- 15564	Merrill's Marauders
-- 15752	Mother Joan of the Angels
-- 15779	Mr. Hobbs Takes a Vacation
-- 15840	Mutiny on the Bounty
-- 16203	On the Beat
-- 16295	Os Cafajestes
-- 16367	Panic in Year Zero!
-- Results truncated. Only the first 50 rows have been shown.


-- 2.
-- Give year of 'Citizen Kane'.

SELECT yr
FROM movie
WHERE title = 'Citizen Kane'

-- output: 

-- yr
-- 1941


-- 3.
-- List all of the Star Trek movies, include the id, title and yr 
-- (all of these movies include the words Star Trek in the title). Order results by year.

SELECT id, title, yr
FROM movie
WHERE title LIKE 'Star Trek%'
ORDER BY yr

-- output: 

-- id	title	yr
-- 17772	Star Trek: The Motion Picture	1979
-- 17775	Star Trek II: The Wrath of Khan	1982
-- 17776	Star Trek III: The Search for Spock	1984
-- 17777	Star Trek IV: The Voyage Home	1986
-- 17779	Star Trek V: The Final Frontier	1989
-- 17780	Star Trek VI: The Undiscovered Country	1991
-- 17774	Star Trek Generations	1994
-- 17770	Star Trek: First Contact	1996
-- 17771	Star Trek: Insurrection	1998
-- 17778	Star Trek Nemesis	2002
-- 17773	Star Trek	2009


-- 4.
-- What id number does the actor 'Glenn Close' have?

SELECT id
FROM actor
WHERE name = 'Glenn Close'

-- output: 

-- id
-- 140


-- 5.
-- What is the id of the film 'Casablanca'

SELECT id
FROM movie 
WHERE title = 'Casablanca'

-- output: 

-- id
-- 11768


-- 6.
-- Obtain the cast list for 'Casablanca'.

SELECT name
FROM casting JOIN actor ON actorid=id
WHERE movieid = 11768

-- output: 


-- name
-- Peter Lorre
-- John Qualen
-- Madeleine LeBeau
-- Jack Benny
-- Dan Seymour
-- Norma Varden
-- Ingrid Bergman
-- Conrad Veidt
-- Leon Belasco
-- Humphrey Bogart
-- Sydney Greenstreet
-- Helmut Dantine
-- Leonid Kinskey
-- Wolfgang Zilzer
-- Claude Rains
-- Curt Bois
-- Leo White
-- Ludwig StÃ¶ssel
-- Marcel Dalio
-- Paul Henreid
-- Joy Page
-- S. Z. Sakall
-- Dooley Wilson
-- William Edmunds
-- Gregory Gaye
-- Torben Meyer
-- Georges Renavent
-- Jean Del Val
-- Louis V. Arco
-- Trude Berliner
-- Ilka GrÃ¼nig
-- Richard Ryen
-- Hans Twardowski


-- 7.
-- Obtain the cast list for the film 'Alien'

SELECT name
FROM casting JOIN actor ON actorid=id
WHERE movieid = 10522

-- output: 

-- name
-- John Hurt
-- Sigourney Weaver
-- Yaphet Kotto
-- Harry Dean Stanton
-- Ian Holm
-- Tom Skerritt
-- Veronica Cartwright

