/*
Problem: 1211_Queries_Quality_And_Percentage
Link: https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50
Category: Basic Aggregate Functions
*/

# Write your MySQL query statement below
SELECT
    query_name,
    ROUND (AVG(rating * 1.0 / position), 2) as quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END ) * 100.0 / Count(*), 2) as poor_query_percentage
FROM Queries
GROUP BY query_name
