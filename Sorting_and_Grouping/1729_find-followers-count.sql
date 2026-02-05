/*
Problem: 1729_find-followers-count
Link: https://leetcode.com/problems/find-followers-count/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Sorting and Grouping
*/

# Write your MySQL query statement below
Select 
    user_id, 
    count(follower_id) as followers_count
from
    Followers
Group by user_id
order by user_id 
