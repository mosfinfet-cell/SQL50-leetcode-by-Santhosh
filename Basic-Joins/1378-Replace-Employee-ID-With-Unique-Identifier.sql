/*
Problem: 1378-Replace-Employee-ID-With-Unique-Identifier
Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Joins
*/

# Write your MySQL query statement below
SELECT 
    EmpUNI.unique_id,
    Emp.name
FROM 
    Employees Emp LEFT JOIN EmployeeUNI EmpUNI 
    ON Emp.id = EmpUNI.id
