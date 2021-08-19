-- https://sqlzoo.net/wiki/Self_join

-- These are 10 excercises on SQL SELF JOINs using 'stops' and 'route' databases. 

-- 1.
-- How many stops are in the database.

SELECT COUNT(name)
FROM stops

-- output: 

-- 246


-- 2.
-- Find the id value for the stop 'Craiglockhart'

SELECT id
FROM stops
WHERE name = 'Craiglockhart'

-- output: 

-- id
-- 53


-- 3.
-- Give the id and the name for the stops on the '4' 'LRT' service.

SELECT id, name
FROM route JOIN stops ON stops.id=route.stop
WHERE company = 'LRT' AND num = '4'

-- output: 

-- id	name
-- 19	Bingham
-- 177	Northfield
-- 149	London Road
-- 194	Princes Street
-- 115	Haymarket
-- 53	Craiglockhart
-- 179	Oxgangs
-- 85	Fairmilehead
-- 117	Hillend


-- 4.
-- Add a HAVING clause to restrict the output to these two routes.

SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
HAVING COUNT(*) = 2

-- output: 

-- company	num	
-- LRT	4	2
-- LRT	45	2


-- 5.
-- Change the query so that it shows the services from Craiglockhart to London Road.

SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53 AND b.stop=149

-- output: 

-- company	num	stop	stop
-- LRT	4	53	149
-- LRT	45	53	149


