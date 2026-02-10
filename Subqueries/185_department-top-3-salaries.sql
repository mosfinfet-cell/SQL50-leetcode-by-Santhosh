/* 
Problem: 185_department-top-three-salaries
Link: https://leetcode.com/problems/department-top-three-salaries/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Hard
Category: Subqueries
*/

# Write your MySQL query statement below
WITH earning_order as (
select 
    name, 
    salary,
    departmentId,
    dense_rank() over(partition by departmentId 
                order by salary desc) as earning_order
from Employee
)
select 
    D.name as Department,
    EO.name as Employee,
    EO.salary
from Department D
JOIN earning_order EO ON EO.departmentId = D.id
where earning_order <= 3
