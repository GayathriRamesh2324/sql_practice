##solution to report the fraction of players that logged in again on the day after the day they first logged in,rounded to 2 decimal places. 
In other words, you need to determine the number of players who logged in on the day immediately following their initial login, 
and divide it by the number of total players.

My SQL:
With cte_firstlogin as(
    Select *,
    MIN(event_date) OVER(PARTITION BY player_id) firstlogin
    from Activity
) 
 Select ROUND(COUNT(player_id) / (Select COUNT(DISTINCT player_id) from cte_firstlogin),2) fraction
 from cte_firstlogin
 where event_date = DATE_ADD(firstlogin,INTERVAL 1 day)
 #where event_date = firstlogin + INTERVAL 1 day


Accepted
Runtime: 119 ms
Case 1
Case 2
Case 3
Input
Activity =
| player_id | device_id | event_date | games_played |
| --------- | --------- | ---------- | ------------ |
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
Output
| fraction |
| -------- |
| 0.33     |
Expected
| fraction |
| -------- |
| 0.33     |
