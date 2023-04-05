/*
Table Activities:

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| sell_date   | date    |
| product     | varchar |
+-------------+---------+
There is no primary key for this table, it may contain duplicates.
Each row of this table contains the product name and the date it was sold in a market.
 

Write an SQL query to find for each date the number of different products sold and their names.

The sold products names for each date should be sorted lexicographically.

Return the result table ordered by sell_date.
Link: https://leetcode.com/problems/group-sold-products-by-the-date/description/?envType=study-plan&id=sql-i
*/
SELECT sell_date, count(distinct(product)) AS num_sold, GROUP_CONCAT(DISTINCT(product) order by product) as products 
FROM Activities
GROUP BY sell_date;
