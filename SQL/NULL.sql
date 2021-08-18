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


-- 6.
-- Use the COALESCE function and a LEFT JOIN to print the teacher name and department name. 
-- Use the string 'None' where there is no department.

SELECT teacher.name, COALESCE(dept.name, 'None')
FROM teacher LEFT JOIN dept ON teacher.dept=dept.id

-- output: 

-- name	
-- Shrivell	Computing
-- Throd	Computing
-- Splint	Computing
-- Spiregrain	None
-- Cutflower	Design
-- Deadyawn	None


-- 7.
-- Use COUNT to show the number of teachers and the number of mobile phones.

SELECT COUNT(name), COUNT(mobile)
FROM teacher

-- output: 

-- 6	3


-- 8.
-- Use COUNT and GROUP BY dept.name to show each department and the number of staff.
-- Use a RIGHT JOIN to ensure that the Engineering department is listed.

SELECT dept.name, COUNT(teacher.name)
FROM teacher RIGHT JOIN dept ON teacher.dept=dept.id
GROUP BY dept.name

-- output: 

-- name	
-- Computing	3
-- Design	1
-- Engineering	0


-- 9.
-- Use CASE to show the name of each teacher followed by 'Sci' if the teacher is in dept 1 or 2 and 'Art' otherwise.

SELECT name, CASE WHEN teacher.dept=1 THEN 'Sci'
                  WHEN teacher.dept=2 THEN 'Sci'
                  ELSE 'Art'
             END 
FROM teacher

-- output: 

-- name	
-- Shrivell	Sci
-- Throd	Sci
-- Splint	Sci
-- Spiregrain	Art
-- Cutflower	Sci
-- Deadyawn	Art


-- 10.
-- Use CASE to show the name of each teacher followed by 'Sci' if the teacher 
-- is in dept 1 or 2, show 'Art' if the teacher's dept is 3 and 'None' otherwise.

SELECT name, CASE WHEN teacher.dept=1 THEN 'Sci'
                  WHEN teacher.dept=2 THEN 'Sci'
                  WHEN teacher.dept=3 THEN 'Art'
                  ELSE 'None'
             END 
FROM teacher

-- output: 

-- name	
-- Shrivell	Sci
-- Throd	Sci
-- Splint	Sci
-- Spiregrain	None
-- Cutflower	Sci
-- Deadyawn	None