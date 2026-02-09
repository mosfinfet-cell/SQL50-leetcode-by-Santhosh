/*
Problem:626_exchange-seats
Link: https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Subqueries
*/

# I use CASE with odd–even logic and protect the last row using MAX(id)

# Write your MySQL query statement below
select 
    CASE WHEN id % 2 = 1 AND id != (select MAX(id) from Seat) THEN id+1
         WHEN id % 2 = 0 THEN id -1
         ELSE id
         END as id,
    student
from Seat
order by id 


