#solution to find all dates' id with higher temperatures compared to its previous dates

MY SQL:
*******
Using Window function & CTE:
***************************
With cte_temp as(
    Select id, temperature curr_temp,
    LAG(temperature) OVER(Order by recordDate) prev_temp
    from Weather
)
Select id
from cte_temp
where prev_temp<curr_temp

MS SQL:
*********
Using Window function & SubQuery:
********************************
Select id 
from (
    Select id, temperature curr_temp,
    LAG(temperature) OVER(Order by recordDate) prev_temp
    from Weather
)t
where t.curr_temp > t.prev_temp


Accepted
Runtime: 205 ms
Case 1
Input
Weather =
| id | recordDate | temperature |
| -- | ---------- | ----------- |
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
Output
| id |
| -- |
| 2  |
| 4  |
Expected
| Id |
| -- |
| 2  |
| 4  |
