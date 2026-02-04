/*
Problem: 1075_Project_Employees_I 
Link: https://leetcode.com/problems/project-employees-i/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Aggregate Functions
*/

# Write your MySQL query statement below
SELECT
    P.project_id,
    Round( AVG(E.experience_years), 2) as average_years
FROM
    Project P
    JOIN Employee E ON P.employee_id = E.employee_id
GROUP BY P.project_id
