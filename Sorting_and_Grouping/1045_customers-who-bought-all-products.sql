/*
Problem: 1045_customers-who-bought-all-products
Link: https://leetcode.com/problems/customers-who-bought-all-products/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Medium
Category: Sorting and Grouping
*/

select
    customer_id 
from customer
group by customer_id
having count(distinct product_key) = (select count(product_key) from product)
