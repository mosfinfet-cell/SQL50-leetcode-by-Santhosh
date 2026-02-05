/*
Problem: 1789_Primary_Department_For_Each_Employee
Link: https://leetcode.com/problems/primary-department-for-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Sorting and Grouping
*/

SELECT 
    employee_id, 
    department_id
FROM
    Employee
WHERE primary_flag = 'Y' OR 
        employee_id IN (
                        select 
                            employee_id
                        from 
                            Employee
                        group by employee_id
                        having count(employee_id) = 1
        )
