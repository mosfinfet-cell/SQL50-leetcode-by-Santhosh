/*
Problem: 1280_Students_And_Examinations
Link: https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Joins
*/

# Write your MySQL query statement below
SELECT
    stu.student_id,
    stu.student_name,
    sub.subject_name, 
    count(E.subject_name) AS attended_exams
FROM 
    Students stu
    CROSS JOIN Subjects sub 
    LEFT JOIN Examinations E on stu.student_id = E.student_id 
                            AND sub.subject_name = E.subject_name

GROUP BY stu.student_id, sub.subject_name
ORDER BY stu.student_id, sub.subject_name
