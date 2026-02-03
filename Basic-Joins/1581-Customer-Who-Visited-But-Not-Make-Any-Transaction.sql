/*
Problem: 1581-Customer-Who-Visited-But-Not-Make-Any-Transaction
Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Joins
*/

# Write your MySQL query statement below
SELECT 
    V.customer_id,
    count(V.visit_id) as count_no_trans
FROM 
    Visits V LEFT JOIN Transactions T 
    ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
Group by V.customer_id
