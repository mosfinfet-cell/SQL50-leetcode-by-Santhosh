/*
Problem: 1527_patients-with-a-condition
Link: https://leetcode.com/problems/patients-with-a-condition/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Advanced String Functions_ Regex _Clause
*/
# Write your MySQL query statement below
select
    patient_id,
    patient_name, 
    conditions
from patients
where conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'
