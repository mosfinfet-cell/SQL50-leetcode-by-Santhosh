/*
Problem: 1193_Monthly_Transactions_I
Link: https://leetcode.com/problems/monthly-transactions-i/description/?envType=study-plan-v2&envId=top-sql-50
Category: Basic Aggregate Functions
*/

# Write your MySQL query statement below
SELECT
    DATE_FORMAT(trans_date, '%Y-%m') as month,
    country,
    Count(*) as trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) as approved_count,
    SUM(amount) as trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) as approved_total_amount
FROM 
    Transactions 
GROUP BY DATE_FORMAT (trans_date, '%Y-%m'), Country;

/*
Note: %Y-%M vs %Y-%m

 %M → Month name (January)

%m → Month number (01)


| Use case               | Prefer                        |
| ---------------------- | ----------------------------- |
| Numeric year/month     | `EXTRACT()`                   |
| Display format         | `DATE_FORMAT()`               |
| Grouping               | `EXTRACT()` or `YEAR/MONTH()` |
| Index-friendly queries | `YEAR()`, `MONTH()`           |

*/
