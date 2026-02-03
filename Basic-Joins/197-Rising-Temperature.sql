/*
Problem: 197-Rising-Temperature
Link: https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Joins
*/

# Using Self Join 
# Write your MySQL query statement below
SELECT
    Today.ID
FROM    
    Weather Yesterday
    JOIN Weather Today
    ON Yesterday.recordDate  = Today.recordDate - Interval 1 DAY
WHERE Yesterday.temperature < Today.temperature

-----------------------------------------------------------------------------------------
  
# Using CTE +  LAG() Window Function  


WITH yesterday_temp AS (
    SELECT 
        id, 
        temperature,
        recordDate,
        Lag(temperature) OVER (ORDER BY recordDate) AS prev_day_temp,
        Lag(recordDate) OVER (ORDER BY recordDate) as prev_day
    FROM 
        Weather
)
SELECT 
    id
FROM 
    yesterday_temp
WHERE temperature > prev_day_temp 
        AND DATEDIFF(recordDate,prev_day) = 1
