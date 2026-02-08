/*
Problem: 1164_product-price-at-a-given-date
Link: https://leetcode.com/problems/product-price-at-a-given-date/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty; Medium
Category: Advanced Select and Joins
*/

# Write your MySQL query statement below
With all_products as (
    select 
        distinct product_id
    from products
),
 latest_price as (
        select
            product_id, 
            new_price,
            row_number() over (partition by product_id 
                               order by change_date desc) as rn
            from products
            where change_date <= '2019-08-16'
)
select
    P.product_id, 
    coalesce(LP.new_price, 10) as price
from 
    all_products P
    left join latest_price LP 
    ON P.product_id = LP.product_id AND LP.rn = 1
