/*
Problem: 1068-Product-Sales-Analysis-I
Link: https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Joins
*/

# Write your MySQL query statement below
SELECT 
    P.product_name,
    S.year,
    S.price
FROM 
    Sales S LEFT JOIN Product P 
    ON S.product_id = P.product_id



