/*
Problem: 1327_list-the-products-ordered-in-a-period
Link: https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Advanced String Functions_ Regex _Clause
*/
# Write your MySQL query statement below
select
    P.product_name,
    sum(O.unit) as unit
from products P
JOIN Orders O ON P.product_id = O.product_id
where O.order_date >= '2020-02-01' AND O.order_date < '2020-03-01'
group by P.product_name
having sum(O.unit) >= 100
