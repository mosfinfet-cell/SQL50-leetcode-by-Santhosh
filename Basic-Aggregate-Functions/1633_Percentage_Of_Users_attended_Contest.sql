/*
Problem: 1633_Percentage_Of_Users_attended_Contest
Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50
Category: Basic Aggregate Functions
*/

# Write your MySQL query statement below
SELECT
    R.contest_id,
    Round(count(R.user_id) * 100 /(SELECT count(*) FROM users), 2) AS percentage
FROM
    Register R
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id
