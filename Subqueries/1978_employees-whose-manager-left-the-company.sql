/*
Problem:1978_employees-whose-manager-left-the-company
Link: https://leetcode.com/problems/employees-whose-manager-left-the-company/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Subqueries
*/

# Write your MySQL query statement below

        select
            employee_id
        from employees
        where manager_id NOT IN (select 
                                    employee_id
                                from employees
                                )
