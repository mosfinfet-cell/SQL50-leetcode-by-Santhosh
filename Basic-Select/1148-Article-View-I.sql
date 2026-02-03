/* 
Problem: 1148-Article-View-I
Link: https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Select
*/
# Write your MySQL query statement below
SELECT 
    DISTINCT author_id as id
FROM 
    Views
WHERE author_id = viewer_id
ORDER BY author_id 
