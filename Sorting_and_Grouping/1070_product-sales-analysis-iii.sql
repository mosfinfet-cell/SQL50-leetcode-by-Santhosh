/*
Problem: 1070_product-sales-analysis-iii
Link: https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Sorting and Grouping
*/

# Write your MySQL query statement below
SELECT 
    product_id,
    year as first_year,
    quantity,
    price
FROM Sales
WHERE (Product_id, year) IN (
    select product_id, min(year)
    from sales
    GROUP BY product_id
)
