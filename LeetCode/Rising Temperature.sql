/*
Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the primary key for this table.
This table contains information about the temperature on a certain day.
 

Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.
Link: https://leetcode.com/problems/rising-temperature/?envType=study-plan&id=sql-i
*/
SELECT w2.id as Id FROM Weather w1 
INNER JOIN Weather w2 ON w1.recordDate =DATE_SUB(w2.recordDate, interval 1 day)
WHERE w1.temperature<w2.temperature;
