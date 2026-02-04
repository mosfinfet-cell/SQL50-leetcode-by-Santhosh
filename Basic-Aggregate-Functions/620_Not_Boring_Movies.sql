/*
Problem: 620_Not_Boring_Movies
Link: https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Aggregate Functions
*/


# Write your MySQL query statement below
SELECT
    *
FROM 
    Cinema
WHERE MOD(id, 2) = 1 
        AND description != 'boring'
ORDER BY rating DESC

  --------------------------------------------------------------------

SELECT
    *
FROM 
    Cinema
WHERE (id % 2) = 1 
        AND description != 'boring'
ORDER BY rating DESC

/* 
To get the remainder in SQL, you can use the MOD() function or the % (modulo) operator.
The MOD() function is supported in several database systems, including MySQL, PostgreSQL, Oracle, and BigQuery. 
The % operator is an alternative syntax available in many systems, including SQL Server, MySQL, PostgreSQL, and SQL
*/
