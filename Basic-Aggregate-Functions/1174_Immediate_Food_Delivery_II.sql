/*
Problem: 1174_Immediate_Food_Delivery_II
Link: https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Medium
Category: Basic Aggregate Functions
*/

#USING CTE + Row_number window function

# Write your MySQL query statement below
With customer_first_order AS (
    SELECT
        *,
        ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date) as RN
    FROM 
        Delivery
),
delivery_type AS (
    SELECT
        customer_id,
        (CASE WHEN order_date = customer_pref_delivery_date THEN 'immediate' ELSE 'scheduled' END ) as type
    FROM 
        customer_first_order
    WHERE RN = 1
)
SELECT 
    ROUND(AVG(CASE WHEN type = 'immediate' THEN 1 ELSE 0 END)* 100, 2) AS immediate_percentage
FROM 
    delivery_type



-----------------------------------------------------------

#Using subQuery
select 
    ROUND (SUM(IF( order_date = customer_pref_delivery_date, 1, 0 )) * 100 / COUNT(distinct customer_id), 2) as immediate_percentage
FROM 
    Delivery
WHERE (customer_id, order_date) IN (select customer_id, MIN(order_date) as first_order
    from Delivery
    group by customer_id)

