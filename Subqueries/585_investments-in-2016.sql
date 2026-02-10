/*
Problem:585_investments-in-2016
Link: https://leetcode.com/problems/investments-in-2016/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Medium
Category: Subqueries
*/

# Write your MySQL query statement below
select 
    Round(Sum(tiv_2016),2) as tiv_2016
from Insurance
where (lat, lon) IN (
        select 
            lat, lon
        from Insurance 
        group by lat, lon
        having count(*) = 1
) AND tiv_2015 IN
(
        select tiv_2015
        from Insurance
        group by tiv_2015
        having count(*) > 1 
)
