/*
Problem: 1484_group-sold-products-by-the-date
Link: https://leetcode.com/problems/group-sold-products-by-the-date/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Advanced String Functions_ Regex _Clause
*/

# Write your MySQL query statement below
select
    sell_date, 
    count(distinct product) as num_sold,
    group_concat(distinct product order by product) as products

from 
    Activities 
group by sell_date
order by sell_date
