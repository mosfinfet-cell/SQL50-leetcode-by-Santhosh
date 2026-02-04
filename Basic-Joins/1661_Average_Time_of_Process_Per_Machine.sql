/*
Problem: 1661_Average_Time_of_Process_Per_Machine
Link: https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Joins
*/

# Write your MySQL query statement below
SELECT
    S.machine_id, 
    round(avg(E.timestamp - S.timestamp), 3) as processing_time   
FROM 
    Activity S
    JOIN Activity E 
    ON S.machine_id = E.machine_id AND S.process_id = E.process_id
    AND S.Activity_type = 'start' AND E.Activity_type = 'end'
GROUP BY S.machine_id
