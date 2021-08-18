-- https://sqlzoo.net/wiki/Using_Null

-- These are 10 SQL excercises that use NULL functions with a teacher and department databases. 

-- 1.
-- List the teachers who have NULL for their department.

SELECT name
FROM teacher 
WHERE dept IS NULL

-- output: 

-- name
-- Spiregrain
-- Deadyawn


-- 2.
-- Note the INNER JOIN misses the teachers with
-- no department and the departments with no teacher.

SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)

-- output: 

-- name	name
-- Shrivell	Computing
-- Throd	Computing
-- Splint	Computing
-- Cutflower	Design


-- 3.
-- Use a different JOIN so that all teachers are listed.

SELECT teacher.name, dept.name
FROM dept RIGHT JOIN teacher ON teacher.dept=dept.id

-- output: 

-- name	name
-- Shrivell	Computing
-- Throd	Computing
-- Splint	Computing
-- Spiregrain	null
-- Cutflower	Design
-- Deadyawn	null


-- 4.
-- Use a different JOIN so that all departments are listed.

SELECT teacher.name, dept.name
FROM dept LEFT JOIN teacher ON teacher.dept=dept.id

-- output: 

-- name	name
-- Shrivell	Computing
-- Throd	Computing
-- Splint	Computing
-- Cutflower	Design
-- null	Engineering


-- 5.
-- Use COALESCE to print the mobile number. Use the number '07986 444 2266' 
-- if there is no number given. Show teacher name and mobile number or '07986 444 2266'

SELECT name, COALESCE(mobile, '07986 444 2266') 
FROM teacher

-- output: 

-- name	
-- Shrivell	07986 555 1234
-- Throd	07122 555 1920
-- Splint	07986 444 2266
-- Spiregrain	07986 444 2266
-- Cutflower	07996 555 6574
-- Deadyawn	07986 444 2266


