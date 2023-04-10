/*
Table: Logs

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
id is the primary key for this table.
id is an autoincrement column.
 

Write an SQL query to find all numbers that appear at least three times consecutively.

Return the result table in any order.

Link: https://leetcode.com/problems/consecutive-numbers/description/?orderBy=most_votes
*/

SELECT distinct num as ConsecutiveNums 
FROM Logs
WHERE (id+1, num) IN (SELECT * FROM Logs) AND (id+2, num) IN (SELECT * FROM Logs);
