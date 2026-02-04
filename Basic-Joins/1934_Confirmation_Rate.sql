/*
Problem: 1934_Confirmation_Rate
Link: https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Medium
Category: Basic Joins
*/

/*
# Write your MySQL query statement below
SELECT 
    S.user_id,
    ROUND ( 
        COALESCE (
            SUM(Case WHEN C.action = 'confirmed' THEN 1 ELSE 0 END ) / NULLIF (Count(C.action),0)
        ,0)
    , 2) as confirmation_rate
FROM 
    Signups S
    LEFT JOIN Confirmations C ON S.user_id = C.user_id
GROUP BY S.user_id

----------------------------------------------------

*/

# Write your MySQL query statement below
SELECT 
    S.user_id,
    ROUND ( 
        COALESCE (
            AVG(Case WHEN C.action = 'confirmed' THEN 1 ELSE 0 END )
        ,0)
    , 2) as confirmation_rate
FROM 
    Signups S
    LEFT JOIN Confirmations C ON S.user_id = C.user_id
GROUP BY S.user_id



# VISUAL REPRESENTATION OF THE TABLE
