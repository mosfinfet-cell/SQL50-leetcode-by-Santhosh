/*
Problem: 1517_find-users-with-valid-e-mails
Link: https://leetcode.com/problems/find-users-with-valid-e-mails/description/?envType=study-plan-v2&envId=top-sql-50
Difficulty: Easy
Category: Advanced String Functions_ Regex _Clause
*/


# Write your MySQL query statement below
select
    *
from Users
where REGEXP_LIKE(mail, '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$','c')


/*
Case-sensitive explicitly:
WHERE REGEXP_LIKE(
    mail,
    '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$',
    'c'
);


'c' = case-sensitive
'i' = case-insensitive
*/
