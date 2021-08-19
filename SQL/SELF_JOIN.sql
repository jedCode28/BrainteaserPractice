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


