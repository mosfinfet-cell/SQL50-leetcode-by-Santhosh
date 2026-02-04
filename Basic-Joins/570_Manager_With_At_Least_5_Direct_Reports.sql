/*
Problem: 570_Manager_With_At_Least_5_Direct_Reports
Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Medium
Category: Basic Joins
*/

*# Write your MySQL query statement below

SELECT 
    M.name
FROM   
    Employee M
    JOIN Employee E ON M.id = E.managerId
GROUP BY M.id
HAVING count(m.id) >= 5

--------------------------------------------------------------

SELECT
    manager.name
FROM 
    (
    SELECT
        M.name,
        count(M.id) as managers_reportees
    FROM
        Employee M
        JOIN Employee E ON M.id = E.managerId
    GROUP BY M.id
    Having managers_reportees >= 5 ) AS Manager
------------------------------------------------------------

select 
    name
from 
    employee
where id IN (
    select managerId 
    from employee
    group by managerId
    having count(*) >= 5
)

*/
