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


-- 8.
-- List the films in which 'Harrison Ford' has appeared

SELECT title
FROM casting JOIN movie ON id = movieid
WHERE actorid = 2216

-- output: 

-- title
-- A Hundred and One Nights
-- Air Force One
-- American Graffiti
-- Apocalypse Now
-- Clear and Present Danger
-- Cowboys & Aliens
-- Crossing Over
-- Dead Heat on a Merry-Go-Round
-- Extraordinary Measures
-- Firewall
-- Force 10 From Navarone
-- Hanover Street
-- Hawthorne of the U.S.A.
-- Hollywood Homicide
-- Indiana Jones and the Kingdom of the Crystal Skull
-- Indiana Jones and the Last Crusade
-- Indiana Jones and the Temple of Doom
-- Jimmy Hollywood
-- K-19: The Widowmaker
-- More American Graffiti
-- Morning Glory
-- Patriot Games
-- Presumed Innocent
-- Raiders of the Lost Ark
-- Random Hearts
-- Regarding Henry
-- Sabrina
-- Sally of the Sawdust
-- Shadows
-- Six Days Seven Nights
-- Smilin' Through
-- Star Wars Episode IV: A New Hope
-- Star Wars Episode V: The Empire Strikes Back
-- Star Wars Episode VI: Return of the Jedi
-- The Conversation
-- The Devil's Own
-- The Fugitive
-- The Mosquito Coast
-- The Star Wars Holiday Special
-- What Lies Beneath
-- Witness
-- Working Girl


-- 9.
-- List the films where 'Harrison Ford' has appeared - but not in the starring role.
--  [Note: the ord field of casting gives the position of the actor. If ord=1 then this actor is in the starring role]

SELECT title
FROM casting JOIN movie ON id = movieid
WHERE actorid = 2216 AND ord <> 1

-- output: 

-- title
-- A Hundred and One Nights
-- American Graffiti
-- Apocalypse Now
-- Cowboys & Aliens
-- Dead Heat on a Merry-Go-Round
-- Extraordinary Measures
-- Force 10 From Navarone
-- Hawthorne of the U.S.A.
-- Jimmy Hollywood
-- More American Graffiti
-- Morning Glory
-- Sally of the Sawdust
-- Shadows
-- Smilin' Through
-- Star Wars Episode IV: A New Hope
-- Star Wars Episode V: The Empire Strikes Back
-- Star Wars Episode VI: Return of the Jedi
-- The Conversation
-- Working Girl


-- 10.
-- List the films together with the leading star for all 1962 films.

SELECT DISTINCT(title), name
FROM movie JOIN casting ON id = movieid JOIN actor ON actor.id = actorid
WHERE yr = 1962 AND ord = 1

-- output: 

-- title	name
-- A Kind of Loving	Alan Bates
-- A Symposium on Popular Songs	Paul Frees
-- A Very Private Affair (Vie PrivÃ©e)	Brigitte Bardot
-- An Autumn Afternoon	Chishu Ryu
-- Atraco a las tres	JosÃ© Luis LÃ³pez VÃ¡zquez
-- Barabbas	Anthony Quinn
-- Battle Beyond the Sun (ÐÐµÐ±Ð¾ Ð·Ð¾Ð²ÐµÑ‚)	Aleksandr Shvorin
-- Big and Little Wong Tin Bar	Jackie Chan
-- Billy Budd	Terence Stamp
-- Billy Rose's Jumbo	Doris Day
-- Birdman of Alcatraz	Burt Lancaster
-- Boccaccio '70	Anita Ekberg
-- Bon Voyage!	Fred MacMurray
-- Boys' Night Out	Kim Novak
-- Cape Fear	Gregory Peck
-- Carnival of Souls	Candace Hilligoss
-- Carry On Cruising	Sid James
-- David and Lisa	Keir Dullea
-- Days of Wine and Roses	Jack Lemmon
-- Dr. No	Sean Connery
-- L'Eclisse	Alain Delon
-- Tutti a casa	Alberto Sordi
-- Experiment in Terror	Glenn Ford
-- Eyes Without a Face	Pierre Brasseur
-- Gay Purr-ee	Judy Garland
-- Gigot	Jackie Gleason
-- Gorath	Ryo Ikebe
-- Gypsy	Rosalind Russell
-- Half Ticket	Kishore Kumar
-- Harakiri	Tatsuya Nakadai
-- In Search of the Castaways	Hayley Mills
-- It's Only Money	Jerry Lewis
-- Jigsaw	Jack Warner
-- Kid Galahad	Elvis Presley
-- La commare secca	Marisa Solinas
-- La notte	Marcello Mastroianni
-- Life for Ruth	Michael Craig
-- Lolita	James Mason
-- Long Day's Journey into Night	Katharine Hepburn
-- Love at Twenty	Jean-Pierre LÃ©aud
-- Lycanthropus	Barbara Lass
-- Mamma Roma	Anna Magnani
-- Merrill's Marauders	Jeff Chandler
-- Mother Joan of the Angels	Lucyna Winnicka
-- Mr. Hobbs Takes a Vacation	James Stewart
-- Mutiny on the Bounty	Marlon Brando
-- On the Beat	Norman Wisdom
-- Os Cafajestes	Daniel Filho
-- Panic in Year Zero!	Ray Milland
-- Period of Adjustment	Anthony Franciosa
-- Results truncated. Only the first 50 rows have been shown.


-- 11.
-- Which were the busiest years for 'Rock Hudson', 
-- show the year and the number of movies he made each year for any year in which he made more than 2 movies.

SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2

-- output: 

-- yr	COUNT(title)
-- 1953	5
-- 1961	3


-- 12.
-- List the film title and the leading actor for all of the films 'Julie Andrews' played in.


SELECT title, name 
FROM movie JOIN casting ON movieid = movie.id AND ord = 1
JOIN actor ON actorid = actor.id
WHERE movie.id IN (
SELECT movieid FROM casting
WHERE actorid IN (
SELECT id FROM actor
WHERE name = 'Julie Andrews'
)
)

-- output: 

-- title	name
-- 10	Dudley Moore
-- Darling Lili	Julie Andrews
-- Despicable Me	Steve Carell
-- Duet for One	Julie Andrews
-- Hawaii	Julie Andrews
-- Little Miss Marker	Walter Matthau
-- Mary Poppins	Julie Andrews
-- Relative Values	Julie Andrews
-- S.O.B.	Julie Andrews
-- Shrek the Third	Mike Myers
-- Star!	Julie Andrews
-- The Americanization of Emily	James Garner
-- The Pink Panther Strikes Again	Peter Sellers
-- The Princess Diaries	Anne Hathaway
-- The Princess Diaries 2: Royal Engagement	Anne Hathaway
-- The Sound of Music	Julie Andrews
-- The Tamarind Seed	Julie Andrews
-- Thoroughly Modern Millie	Julie Andrews
-- Tooth Fairy	Dwayne Johnson
-- Torn Curtain	Paul Newman
-- Victor Victoria	Julie Andrews


-- 13.
-- Obtain a list, in alphabetical order, of actors who've had at least 15 starring roles.

SELECT name
FROM movie JOIN casting ON movieid = movie.id AND ord=1
           JOIN actor ON actorid = actor.id
GROUP BY name
HAVING COUNT(name) >= 15

-- output: 

-- name
-- Adam Sandler
-- Al Pacino
-- Anthony Hopkins
-- Antonio Banderas
-- Arnold Schwarzenegger
-- Barbara Stanwyck
-- Basil Rathbone
-- Ben Affleck
-- Bette Davis
-- Betty Grable
-- Bing Crosby
-- Bruce Willis
-- Bud Abbott
-- Burt Lancaster
-- Burt Reynolds
-- Buster Keaton
-- Cary Grant
-- Charles Bronson
-- Charlton Heston
-- Clark Gable
-- Claudette Colbert
-- Clint Eastwood
-- Dean Martin
-- Dennis Quaid
-- Denzel Washington
-- Dirk Bogarde
-- Dustin Hoffman
-- Edward G. Robinson
-- Elvis Presley
-- Errol Flynn
-- Frank Sinatra
-- Fred Astaire
-- Fredric March
-- Gary Cooper
-- GÃ©rard Depardieu
-- Gene Hackman
-- George Clooney
-- Glenn Ford
-- Gregory Peck
-- Greta Garbo
-- Harrison Ford
-- Henry Fonda
-- Humphrey Bogart
-- Ingrid Bergman
-- Jack Lemmon
-- Jack Nicholson
-- Jackie Chan
-- James Cagney
-- James Mason
-- James Stewart
-- Results truncated. Only the first 50 rows have been shown.


-- 14.
-- List the films released in the year 1978 ordered by the number of actors in the cast, then by title.

SELECT DISTINCT(title), COUNT(actorid) 
FROM movie JOIN casting ON movie.id = movieid
           JOIN actor ON actor.id = actorid
WHERE yr = 1978
GROUP BY title
ORDER BY COUNT(actorid) DESC, title

-- output: 

-- title	COUNT(actorid)
-- The Bad News Bears Go to Japan	50
-- The Swarm	37
-- Grease	28
-- American Hot Wax	27
-- The Boys from Brazil	26
-- Heaven Can Wait	25
-- Big Wednesday	21
-- A Night Full of Rain	19
-- A Wedding	19
-- Orchestra Rehearsal	19
-- The Cheap Detective	19
-- Go Tell the Spartans	18
-- Death on the Nile	17
-- Movie Movie	17
-- Superman	17
-- The Cat from Outer Space	17
-- The Driver	17
-- The Star Wars Holiday Special	17
-- Blue Collar	16
-- Ice Castles	16
-- International Velvet	16
-- J.R.R. Tolkien's The Lord of the Rings	16
-- Alexandria... Why?	15
-- Bye Bye Monkey	15
-- Coming Home	15
-- David	15
-- Gray Lady Down	15
-- Occupation in 26 Pictures	15
-- Revenge of the Pink Panther	15
-- The Brink's Job	15
-- The Chant of Jimmie Blacksmith	15
-- The Water Babies	15
-- Violette NoziÃ¨re	15
-- Who'll Stop The Rain	15
-- Without Anesthesia	15
-- Bread and Chocolate	14
-- Closed Circuit	14
-- Damien: Omen II	14
-- I Wanna Hold Your Hand	14
-- The Empire of Passion	14
-- Almost Summer	13
-- An Unmarried Woman	13
-- Foul Play	13
-- Goin' South	13
-- The Left-Handed Woman	13
-- California Suite	12
-- Force 10 From Navarone	12
-- In Praise of Older Women	12
-- Jaws 2	12
-- Midnight Express	12
-- Results truncated. Only the first 50 rows have been shown.


-- 15.
-- List all the people who have worked with 'Art Garfunkel'.

SELECT DISTINCT(name) AS name
FROM movie JOIN casting ON movieid = movie.id
           JOIN actor ON actorid=actor.id
WHERE movieid = 10095 OR
      movieid = 11434 OR
      movieid = 13630 
GROUP BY movieid,name
HAVING name <> 'Art Garfunkel'SELECT DISTINCT(name) AS name
FROM movie JOIN casting ON movieid = movie.id
           JOIN actor ON actorid=actor.id
WHERE movieid = 10095 OR
      movieid = 11434 OR
      movieid = 13630 
GROUP BY movieid,name
HAVING name <> 'Art Garfunkel'

-- output: 

-- name
-- Beverly Johnson
-- Breckin Meyer
-- Bruce Jay Friedman
-- Cameron Mathison
-- Cecilie Thomsen
-- Cindy Crawford
-- Donald Trump
-- Elio Fiorucci
-- Ellen Albertini Dow
-- Frederique van der Wal
-- Georgina Grenville
-- Heather Matarazzo
-- Heidi Klum
-- Lauren Hutton
-- Lorna Luft
-- Mark Ruffalo
-- Michael York
-- Mike Myers
-- Neve Campbell
-- Peter Bogdanovich
-- Ron Jeremy
-- Ryan Phillippe
-- Salma Hayek
-- Sela Ward
-- Sherry Stringfield
-- Sheryl Crow
-- Skipp Sudduth
-- Stars on 54
-- Thelma Houston
-- Valerie Perrine
-- Veronica Webb
-- Bill Paxton
-- Julian Sands
-- Kurtwood Smith
-- Sherilyn Fenn
-- Harris Yulin
-- Robert DoQui