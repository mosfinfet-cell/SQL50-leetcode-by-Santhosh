/*
Problem: 176_second-highest-salary
Link: https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Medium
Category: Advanced String Functions_ Regex _Clause
*/
/*
turning entire query into a scalar subquery, SQL is forced to return NULL if the inner query finds nothing.

If the inner query finds the 2nd salary, it returns it (e.g., 50000).

If the inner query finds nothing (empty set), the outer SELECT (...) evaluates that "missing" scalar value as NULL.
*/
select(
    select salary 
from(
        select distinct 
        salary,
        dense_rank() over(order by salary desc) as rn
    from Employee) as salary_order
where rn = 2 
) as SecondHighestSalary;
-------------------------------------------


SELECT (
  SELECT DISTINCT salary
  FROM Employee
  ORDER BY salary DESC
  LIMIT 1 OFFSET 1
) AS SecondHighestSalary;

--------------------------------------------------
# Aggregate functions like MAX() or MIN() return NULL if run on an empty result set. You can simply wrap your final selection in MAX()


select 
    max(salary) as SecondHighestSalary
from Employee
where salary < (select max(salary) from Employee)
