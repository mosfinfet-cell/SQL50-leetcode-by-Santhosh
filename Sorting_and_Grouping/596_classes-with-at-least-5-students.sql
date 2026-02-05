/*
Problem: 596_classes-with-at-least-5-students
Link: https://leetcode.com/problems/classes-with-at-least-5-students/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Sorting and Grouping
*/

# Write your MySQL query statement below
select 
    class
from
    Courses
group by class
having count(class) >=5
