/* 
Problem: 1148-Article-View-I
Link: 
Difficulty: 
Category:
*/
# Write your MySQL query statement below
SELECT 
    DISTINCT author_id as id
FROM 
    Views
WHERE author_id = viewer_id
ORDER BY author_id 
