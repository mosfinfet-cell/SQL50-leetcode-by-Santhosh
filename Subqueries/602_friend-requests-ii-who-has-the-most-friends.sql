/*
Problem:602_friend-requests-ii-who-has-the-most-friends
Link: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Medium
Category: Subqueries
*/
# Write your MySQL query statement below
With total_friends as (
    select 
    requester_id as id 
from RequestAccepted
UNION ALL
select 
    accepter_id 
from RequestAccepted
)
select
    id,
    count(id) as num
from total_friends
group by id
order by num desc
limit 1
