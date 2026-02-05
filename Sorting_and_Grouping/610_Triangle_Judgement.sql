/*
Problem: 610_Triangle_Judgement
Link: https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Sorting and Grouping
*/

# Write your MySQL query statement below
SELECT
    *,
    (CASE WHEN x-y < z AND z < x+y 
            AND y-z < x AND x < y+z 
            AND x-z < y AND y < x+z THEN 'Yes' ELSE "No" END) as triangle 
FROM 
    Triangle
