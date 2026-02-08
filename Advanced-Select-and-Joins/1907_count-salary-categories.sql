/*
Problem: 1907_count-salary-categories
Link: https://leetcode.com/problems/count-salary-categories/?envType=study-plan-v2&envId=top-sql-50
Difficulty; Medium
Category: Advanced Select and Joins
*/

# Write your MySQL query statement below
With categories as (
    select 'Low Salary' AS category
    UNION ALL
    select 'Average Salary'
    UNION ALL
    select 'High Salary'
),
Salary_category As (
        Select
            CASE WHEN income < 20000 THEN 'Low Salary'
                 WHEN income > 50000 THEN 'High Salary'
                      ELSE 'Average Salary' 
                      END  as category
        from Accounts 
)
select
    C.category,
    count(SC.category) as accounts_count
from categories C
left join Salary_category SC on C.category = SC.category
group by C.category
