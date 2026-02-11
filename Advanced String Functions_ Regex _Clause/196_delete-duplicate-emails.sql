/*
Problem: 196_delete-duplicate-emails
Link: https://leetcode.com/problems/delete-duplicate-emails/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Advanced String Functions_ Regex _Clause
*/

/* 
We use a self-join on the Person table to identify rows with the same email but higher IDs. 
Then, we delete those rows, keeping only the row with the smallest ID for each unique email.
*/

# Write your MySQL query statement below
DELETE 
    p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email AND p1.id > p2.id
