/*
Problem: 1141_User_Acitivity_For_the_Past_30_Days
Link: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Sorting and Grouping
*/

# Write your MySQL query statement below
SELECT
    activity_date as day,
    Count(distinct user_id) as active_users
FROM
    Activity 
WHERE activity_date <= '2019-07-27' AND  activity_date >=  '2019-06-28'
Group by activity_date
