/*
Problem: 1683-Invalid-Tweets
Link: https://leetcode.com/problems/invalid-tweets/submissions/1906679319/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Basic Select
*/

# Write your MySQL query statement below
SELECT 
    tweet_id
FROM Tweets
WHERE length(content) > 15

# Analyst Tip: In MySQL, CHAR_LENGTH() is generally safer if you are dealing with multi-byte characters or international text.
