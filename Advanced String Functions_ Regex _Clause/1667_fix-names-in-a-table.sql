/*
Problem: 1667_fix-names-in-a-table
Link: https://leetcode.com/problems/fix-names-in-a-table/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Advanced String Functions_ Regex _Clause
*/

# Write your MySQL query statement below 
select
    user_id,
    CONCAT(UPPER(Left(name,1)),LOWER(Right(name,char_length(name)-1))) as name
from Users
order by user_id




# Write your MySQL query statement below 
  #using substring cost more time and thereby slower process
select
    user_id,
    CONCAT(UPPER(substring(name,1,1)),LOWER(substring(name,2,char_length(name)))) as name
from Users
order by user_id
