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


