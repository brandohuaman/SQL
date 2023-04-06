/*
Table: Visits

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| visit_id    | int     |
| customer_id | int     |
+-------------+---------+
visit_id is the primary key for this table.
This table contains information about the customers who visited the mall.
 

Table: Transactions

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| transaction_id | int     |
| visit_id       | int     |
| amount         | int     |
+----------------+---------+
transaction_id is the primary key for this table.
This table contains information about the transactions made during the visit_id.
 

Write a SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order.
Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/?envType=study-plan&id=sql-i
*/
SELECT g.customer_id, count(g.visit_id) as count_no_trans FROM (
SELECT * FROM Visits
LEFT JOIN Transactions USING(visit_id)
UNION
SELECT * FROM Visits
RIGHT JOIN Transactions USING(visit_id) 
    ) AS g
WHERE g.transaction_id IS NULL
GROUP BY g.customer_id;
