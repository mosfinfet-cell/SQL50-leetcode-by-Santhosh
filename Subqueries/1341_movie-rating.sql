/*
Problem:1341_movie-rating
Link: https://leetcode.com/problems/movie-rating/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Medium
Category: Subqueries
*/


# Write your MySQL query statement below
WITH High_User AS (
select 
    U.name,
    count(MR.user_id) as No_of_times_rated
from Users U
JOIN MovieRating MR ON U.user_id = MR.user_id 
group by U.user_id
order by No_of_times_rated desc, U.name
limit 1
),
High_rated_movie AS (
    select 
        M.title,
        avg(MR.rating) as avg_rating
    from Movies M
    JOIN MovieRating MR ON M.movie_id = MR.movie_id
    where date_format(MR.created_at, '%M %Y') = 'February 2020'
    group by MR.movie_id
    order by avg_rating DESC, M.title
    limit 1
)
select 
    name as results
from High_user
 UNION ALL
 select 
    title
from High_rated_movie


# use UNION ALL, to keep duplicates in the result table. UNION only keeps distinct values in the table
