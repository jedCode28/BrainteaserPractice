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


-- 6.
-- Change the query so that the services between 'Craiglockhart' and 'London Road' are shown.

SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' AND 
      stopb.name='London Road'

-- output: 

-- company	num	name	name
-- LRT	4	Craiglockhart	London Road
-- LRT	45	Craiglockhart	London Road


-- 7.
-- Give a list of all the services which connect stops 115 and 137 ('Haymarket' and 'Leith')

SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON a.num=b.num
WHERE a.stop='115' AND b.stop='137'

-- output: 

-- company	num
-- LRT	12
-- LRT	2
-- LRT	22
-- LRT	25
-- LRT	2A
-- SMT	C5


-- 8.
-- Give a list of the services which connect the stops 'Craiglockhart' and 'Tollcross'

SELECT a.company, a.num
FROM route a JOIN route b ON a.num=b.num
JOIN stops stopa ON (a.stop=stopa.id)
JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' AND
      stopb.name='Tollcross'

-- output: 

-- company	num
-- LRT	10
-- LRT	27
-- LRT	45
-- LRT	47


-- 9.
-- Give a distinct list of the stops which may be reached from 'Craiglockhart' by taking one bus, including 'Craiglockhart' itself, offered by the LRT company. 
-- Include the company and bus no. of the relevant services.

SELECT DISTINCT bstop.name, a.company, a.num
FROM route AS a JOIN route AS b ON a.company=b.company AND
                          a.num=b.num
                JOIN stops AS astop ON a.stop=astop.id
                JOIN stops AS bstop ON b.stop=bstop.id
WHERE astop.name='Craiglockhart'

-- output: 

-- name	company	num
-- Balerno	LRT	47
-- Balerno Church	LRT	47
-- Bingham	LRT	4
-- Brunstane	LRT	45
-- Canonmills	LRT	27
-- Canonmills	LRT	47
-- Cockburn Crescent	LRT	47
-- Colinton	LRT	10
-- Colinton	LRT	45
-- Colinton	LRT	47
-- Craiglockhart	LRT	10
-- Craiglockhart	LRT	27
-- Craiglockhart	LRT	4
-- Craiglockhart	LRT	45
-- Craiglockhart	LRT	47
-- Crewe Toll	LRT	27
-- Currie	LRT	45
-- Currie	LRT	47
-- Duddingston	LRT	45
-- Fairmilehead	LRT	4
-- Hanover Street	LRT	27
-- Hanover Street	LRT	45
-- Hanover Street	LRT	47
-- Haymarket	LRT	4
-- Hillend	LRT	4
-- Hunters Tryst	LRT	27
-- Leith	LRT	10
-- Leith Walk	LRT	10
-- London Road	LRT	4
-- London Road	LRT	45
-- Muirhouse	LRT	10
-- Newhaven	LRT	10
-- Northfield	LRT	4
-- Northfield	LRT	45
-- Oxgangs	LRT	27
-- Oxgangs	LRT	4
-- Princes Street	LRT	10
-- Princes Street	LRT	4
-- Riccarton Campus	LRT	45
-- Silverknowes	LRT	10
-- Silverknowes	LRT	27
-- Tollcross	LRT	10
-- Tollcross	LRT	27
-- Tollcross	LRT	45
-- Tollcross	LRT	47
-- Torphin	LRT	10


-- 10.
-- Find the routes involving two buses that can go from Craiglockhart to Lochend.
-- Show the bus no. and company for the first bus, the name of the stop for the transfer,
-- and the bus no. and company for the second bus.

SELECT DISTINCT one.num AS FirstBus, one.company AS FirstComp, one.name AS Transfer, two.num AS SecBus, two.company AS SecComp

FROM

    (SELECT DISTINCT a.num, a.company, yy.name
     FROM route a JOIN route b ON (a.company=b.company AND a.num=b.num) 
                  JOIN stops xx ON (xx.id=a.stop) 
                  JOIN stops yy ON (yy.id=b.stop)
     WHERE xx.name='Craiglockhart' AND yy.name<>'Lochend'
     ) AS one

JOIN

    (SELECT DISTINCT c.num, d.company, mm.name
     FROM route c JOIN route d ON (c.company=d.company AND c.num=d.num) 
                  JOIN stops mm ON (mm.id=c.stop) 
                  JOIN stops nn ON (nn.id=d.stop)
     WHERE mm.name <> 'Craiglockhart' AND nn.name='Lochend'
     ) AS two

ON (two.name=one.name)

-- output: 

-- FirstBus	FirstComp	Transfer	SecBus	SecComp
-- 10	LRT	Leith	34	LRT
-- 10	LRT	Leith	35	LRT
-- 10	LRT	Leith	87	LRT
-- 10	LRT	Leith	C5	SMT
-- 10	LRT	Princes Street	65	LRT
-- 10	LRT	Princes Street	C5	SMT
-- 27	LRT	Canonmills	34	LRT
-- 27	LRT	Canonmills	35	LRT
-- 27	LRT	Crewe Toll	20	LRT
-- 4	LRT	Haymarket	65	LRT
-- 4	LRT	Haymarket	C5	SMT
-- 4	LRT	London Road	20	LRT
-- 4	LRT	London Road	34	LRT
-- 4	LRT	London Road	35	LRT
-- 4	LRT	London Road	42	LRT
-- 4	LRT	London Road	46A	LRT
-- 4	LRT	London Road	65	LRT
-- 4	LRT	London Road	87	LRT
-- 4	LRT	London Road	87A	LRT
-- 4	LRT	London Road	C5	SMT
-- 4	LRT	Princes Street	65	LRT
-- 4	LRT	Princes Street	C5	SMT
-- 45	LRT	Duddingston	42	LRT
-- 45	LRT	Duddingston	46A	LRT
-- 45	LRT	London Road	20	LRT
-- 45	LRT	London Road	34	LRT
-- 45	LRT	London Road	35	LRT
-- 45	LRT	London Road	42	LRT
-- 45	LRT	London Road	46A	LRT
-- 45	LRT	London Road	65	LRT
-- 45	LRT	London Road	87	LRT
-- 45	LRT	London Road	87A	LRT
-- 45	LRT	London Road	C5	SMT
-- 45	LRT	Riccarton Campus	65	LRT
-- 47	LRT	Canonmills	34	LRT
-- 47	LRT	Canonmills	35	LRT