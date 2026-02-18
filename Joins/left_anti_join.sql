#Customer Who Visited but Did Not Make Any Transactions
#Solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Select customer_id,count(*) count_no_trans
from Visits v
LEFT JOIN Transactions t
ON v.visit_id  = t.visit_id 
where t.transaction_id is null
Group by customer_id

#############################################################################
Accepted
Runtime: 98 ms
Case 1
Input
Visits =
| visit_id | customer_id |
| -------- | ----------- |
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
View more
Transactions =
| transaction_id | visit_id | amount |
| -------------- | -------- | ------ |
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |
Output
| customer_id | count_no_trans |
| ----------- | -------------- |
| 30          | 1              |
| 96          | 1              |
| 54          | 2              |
Expected
| customer_id | count_no_trans |
| ----------- | -------------- |
| 30          | 1              |
| 96          | 1              |
| 54          | 2              |
