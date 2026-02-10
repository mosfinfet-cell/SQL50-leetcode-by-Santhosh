/*
Problem:1321_restaurant-growth
Link: https://leetcode.com/problems/restaurant-growth/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Medium
Category: Subqueries
*/

# Write your MySQL query statement below
With daily_amount as (
    select 
        visited_on,
        sum(amount) as daily_amount
    from customer
    group by visited_on

),
moving_avg as (
        select 
            visited_on, 
            sum(daily_amount) over(order by visited_on 
                        rows between 6 preceding and current row) as amount, 
            Round(avg(daily_amount) over(order by visited_on 
                              rows between 6 preceding and current row),2) as average_amount
        from daily_amount
)
select 
    *
from moving_avg
where visited_on >= (select min(visited_on) + interval 6 day from daily_amount)
order by visited_on


# Aggregate to one row per day
