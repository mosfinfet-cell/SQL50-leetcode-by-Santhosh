/*
Problem: 
Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty; Easy
Category: Advanced Select and Joins
*/

# Write your MySQL query statement below
select 
    E.employee_id, 
    E.name, 
    count(M.reports_to) as reports_count,
    Round(avg(M.age)) as average_age
from Employees E
JOIN Employees M ON E.employee_id = M.reports_to
Group by E.employee_id
order by E.employee_id
