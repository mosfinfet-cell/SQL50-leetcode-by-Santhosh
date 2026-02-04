/*
Problem: 577_Employee_Bonus
Link: https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Joins
*/

# Write your MySQL query statement below
SELECT 
    E.name,
    B.bonus
FROM
    Employee E 
    LEFT JOIN Bonus B on E.empId = B.empId
WHERE B.bonus < 1000
        OR B.bonus IS NULL 
