/*
Problem: 1251_Average_Selling_Price
Link: https://leetcode.com/problems/average-selling-price/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Aggregate Functions
*/

# Write your MySQL query statement below
SELECT
    P.product_id, 
    ROUND (COALESCE (sum(P.price * US.units)/sum(US.units), 0), 2) as average_price
FROM
    Prices P
    LEFT JOIN UnitsSold US ON P.product_id = US.product_id
    AND start_date <= US.purchase_date AND US.purchase_date <= end_date
GROUP BY P.product_id
