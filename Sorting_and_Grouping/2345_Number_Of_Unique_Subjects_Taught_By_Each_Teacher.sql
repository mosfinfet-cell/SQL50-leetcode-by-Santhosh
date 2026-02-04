/*
Problem: 2345_Number_Of_Unique_Subjects_Taught_By_Each_Teacher
Link: https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Sorting and Grouping
*/

# Write your MySQL query statement below
SELECT
    teacher_id, 
    count(distinct subject_id) as cnt
FROM Teacher
GROUP BY teacher_id
