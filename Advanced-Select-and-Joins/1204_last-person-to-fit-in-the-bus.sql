/*
Problem: 1204_last-person-to-fit-in-the-bus
Link: https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty; Easy
Category: Advanced Select and Joins
*/

# Write your MySQL query statement below
With cumulative_sum As (
        select
            *,
            sum(weight) over(order by turn) as cumulative_weight  
        from Queue

)

select 
    person_name
from cumulative_sum
where cumulative_weight <= 1000
order by turn desc
limit 1
