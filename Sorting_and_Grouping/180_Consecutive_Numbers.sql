/*
Problem: 180_Consecutive_Numbers
Link: https://leetcode.com/problems/consecutive-numbers/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Medium
Category: Sorting and Grouping
*/

# Write your MySQL query statement below
SELECT 
    distinct l1.num as ConsecutiveNums
FROM
    Logs l1, logs l2, logs l3
WHERE l1.id = l2.id -1 AND l2.id = l3.id -1
        AND l1.num = l2.num AND l2.num = l3.num 
