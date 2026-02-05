/*
Problem: 619_biggest-single-number
Link: https://leetcode.com/problems/biggest-single-number/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Sorting and Grouping
*/
# Write your MySQL query statement below
select
    MAX(num) as num
from MyNumbers 
where num IN (select
                num
                from MyNumbers
                group by num
                having count(num) = 1)
